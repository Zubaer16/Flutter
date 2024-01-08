import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violetButton.dart';

class UserForm extends StatelessWidget {
  UserForm({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
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
                        TextFormField(
                          controller: _dobController,
                          readOnly: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
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
                        SizedBox(
                          height: 102.h,
                        ),
                        VioletButton(
                          title: 'Submit',
                          onAction: () => Get.toNamed(userForm),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                            child:
                                Text('--OR--', style: AppStyles.textStyle_4)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/facebook.png',
                                height: 23.h,
                                width: 23.w,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/icons/google.png',
                                height: 23.h,
                                width: 23.w,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: RichText(
                              text: TextSpan(
                                  text: 'Already an user? ',
                                  style: AppStyles.textStyle_6,
                                  children: [
                                TextSpan(
                                    text: 'Log In',
                                    style: AppStyles.textStyle_7,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed(logIn);
                                      })
                              ])),
                        )
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
