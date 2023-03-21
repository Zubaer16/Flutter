import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
            onTap: () => {FocusScope.of(context).unfocus()},
            child: Scaffold(
                backgroundColor: const Color(0xffe5e5e5),
                body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                              ).r,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  'Change Password',
                                  style: TextStyle(
                                      color: const Color(0xff08083d),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4.h,
                                      fontFamily: gelion),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ).r,
                              child: CustomCircleButton(
                                  onPressed: () => {
                                        Get.back(),
                                      }),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 5,
                          ).r,
                          child: SizedBox(
                              // height: 32.h,
                              width: 296.w,
                              child: Text(
                                'Your pin is your personal authentication \n pin for performing trasanctions within \n sutraq',
                                style: TextStyle(
                                    color: const Color(0xff000000)
                                        .withOpacity(0.5),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3,
                                    fontFamily: circularStd),
                                textAlign: TextAlign.center,
                              )),
                        ),
                        SizedBox(
                          height: 51.h,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          height: 600.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))
                                      .r),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45.h,
                              ),
                              CustomInput(
                                isPrefixIcon: false,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: false,
                                labelText: 'Current Password',
                                inputFieldType: TextInputType.visiblePassword,
                                width: 300.w,
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              CustomInput(
                                isPrefixIcon: false,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: false,
                                labelText: 'New Password',
                                inputFieldType: TextInputType.visiblePassword,
                                width: 300.w,
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              CustomInput(
                                isPrefixIcon: false,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: false,
                                labelText: 'Confirm New Password',
                                inputFieldType: TextInputType.visiblePassword,
                                width: 300.w,
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              CustomButton(
                                onPressed: () => {},
                                buttonWidth: 300.w,
                                buttonHeight: 61.h,
                                buttonColor: greenColor,
                                buttonText: 'Change Password'.toUpperCase(),
                                buttonFontSize: 16.sp,
                                buttonTextWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )))));
  }
}
