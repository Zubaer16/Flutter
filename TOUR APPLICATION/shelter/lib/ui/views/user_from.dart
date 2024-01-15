import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violet_button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});

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
    return SafeArea(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.only(left: 27, right: 27, top: 56).r,
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tell Us More About You.',
                          style: AppStyles.textStyle_8,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Text(
                            'We will not share your information\noutside this application.',
                            style: AppStyles.textStyle_4),
                        SizedBox(
                          height: 50.h,
                        ),
                        formField(
                            _nameController, TextInputType.name, 'Full Name'),
                        SizedBox(
                          height: 28.h,
                        ),
                        formField(_phoneController, TextInputType.number,
                            'Phone Number'),
                        SizedBox(
                          height: 28.h,
                        ),
                        formField(
                            _addressController, TextInputType.text, 'Address'),
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
                            print('switched to: $index');
                          },
                        ),
                        SizedBox(
                          height: 128.h,
                        ),
                        VioletButton(
                          title: 'Submit',
                          onAction: () => Get.toNamed(privacyPolicy),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ]),
                ),
              ),
            )));
  }
}

Widget formField(controller, inputType, hint) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    decoration: AppStyles.inputDecorationStyle_1(hint),
  );
}
