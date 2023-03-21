import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

import '../components/custom_circle_button.dart';

class AddNewBankAccount extends StatelessWidget {
  const AddNewBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
          backgroundColor: const Color(0xfff1f3f4),
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
                          'Add New \n Bank Account',
                          style: TextStyle(
                              color: const Color(0xff08083d),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.4,
                              fontFamily: gelion),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ).r,
                      child: CustomCircleButton(onPressed: () => {Get.back()}),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ).r,
                  child: SizedBox(
                      height: 48.h,
                      width: 189.w,
                      child: Text(
                        'Ensure to fill in the neccessary details of the recipient in order to continue',
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.5),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: circularStd),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ).r,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 509.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(10).r,
                            topRight: const Radius.circular(10).r)),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25).r,
                        child: Form(
                            child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              CustomDropdown(
                                widht: 307.w,
                                bottomPadding: 23.r,
                                textButtonVisible: false,
                                isPrefixIcon: false,
                                isPrefixIconImage: false,
                                labelText: 'Select Bank',
                                textButtonOnpressed: () => {},
                              ),
                              CustomInput(
                                  width: 307.w,
                                  labelText: 'Account Number',
                                  bottomPadding: 23.r,
                                  isPrefixIcon: false,
                                  isPrefixIconImage: false,
                                  isSuffixIcon: false,
                                  placeholder: false),
                              CustomInput(
                                  width: 307.w,
                                  labelText: 'Registered Phone Number',
                                  bottomPadding: 76.r,
                                  isPrefixIcon: false,
                                  isPrefixIconImage: false,
                                  isSuffixIcon: false,
                                  placeholder: false),
                              CustomButton(
                                onPressed: () => {},
                                buttonWidth: 307.w,
                                buttonHeight: 61.h,
                                buttonColor: greenColor,
                                buttonText: 'Confirm'.toUpperCase(),
                                buttonFontSize: 16.sp,
                                buttonTextWeight: FontWeight.w500,
                              )
                            ],
                          ),
                        )),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
