import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violet_button.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:shelter/business_logics/form_info.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final Rx<TextEditingController> _dobController = TextEditingController().obs;
  final Rx<DateTime> selectedDate = DateTime.now().obs;

  Future<void> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    if (selected != null && selected != selectedDate.value) {
      _dobController.value.text =
          '${selected.day}-${selected.month}-${selected.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    String gender = 'Male';
    return PopScope(
      canPop: false,
      child: SafeArea(
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                body: Padding(
                  padding:
                      const EdgeInsets.only(left: 27, right: 27, top: 56).r,
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tell Us More About You.',
                              style: AppStyles.textStyleV32500,
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Text(
                                'We will not share your information\noutside this application.',
                                style: AppStyles.textStyleB16300),
                            SizedBox(
                              height: 50.h,
                            ),
                            formField(_nameController, TextInputType.name,
                                'Full Name', (val) {
                              if (val!.isEmpty) {
                                return 'This field cannot be empty';
                              } else {
                                return null;
                              }
                            }),
                            SizedBox(
                              height: 28.h,
                            ),
                            formField(_phoneController, TextInputType.number,
                                'Phone Number', (val) {
                              if (val!.isEmpty) {
                                return 'This field cannot be empty';
                              } else if (isNumeric(val) == false) {
                                return 'This section contains only number';
                              } else {
                                return null;
                              }
                            }),
                            SizedBox(
                              height: 28.h,
                            ),
                            formField(_addressController, TextInputType.text,
                                'Address', (val) {
                              if (val!.isEmpty) {
                                return 'This field cannot be empty';
                              } else {
                                return null;
                              }
                            }),
                            SizedBox(
                              height: 28.h,
                            ),
                            Obx(
                              () => TextFormField(
                                controller: _dobController.value,
                                readOnly: true,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () => _selectDate(context),
                                      icon: const Icon(
                                        Icons.calendar_month_rounded,
                                        color: Colors.black,
                                      ),
                                    ),
                                    hintText: 'Date of Birth',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                    )),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'This field cannot be empty';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            ToggleSwitch(
                              initialLabelIndex: 0,
                              totalSwitches: 2,
                              minWidth: 100.w,
                              dividerMargin: 10.w,
                              activeBgColor: const [Color(0xFFFC4646)],
                              customTextStyles: const [
                                TextStyle(color: Colors.white)
                              ],
                              labels: const ['Male', 'Female'],
                              onToggle: (index) {
                                if (index == 0) {
                                  gender = 'Male';
                                } else {
                                  gender = 'Female';
                                }
                                print('switched to: $index');
                              },
                            ),
                            SizedBox(
                              height: 128.h,
                            ),
                            VioletButton(
                                title: 'Submit',
                                value: ButtonLoadingState.userFormValue,
                                onAction: () {
                                  if (_formKey.currentState!.validate()) {
                                    FormInfo().sendFormDataToDB(
                                        _nameController.text,
                                        int.parse(_phoneController.text),
                                        _addressController.text,
                                        _dobController.value.text,
                                        gender);
                                  }
                                }),
                            SizedBox(
                              height: 10.h,
                            ),
                          ]),
                    ),
                  ),
                ),
              ))),
    );
  }
}

Widget formField(controller, inputType, hint, validator) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles.inputDecorationStyle_1(hint),
    validator: validator,
  );
}

bool isNumeric(String str) {
  RegExp numeric = RegExp('[0-9]');
  return numeric.hasMatch(str);
}
