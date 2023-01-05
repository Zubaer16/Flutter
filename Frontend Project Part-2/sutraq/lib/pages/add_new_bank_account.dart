import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

import '../components/custom_circle_button.dart';

class AddNewBankAccount extends StatelessWidget {
  const AddNewBankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xfff1f3f4),
          body: Column(
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
                            color: Color(0xff08083d),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            height: 1.4),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20).r,
                    child:
                        CustomCircleButton(customFunction: () => {Get.back()}),
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
                          color: Color(0xff000000),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400),
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
                          topLeft: Radius.circular(10).r,
                          topRight: Radius.circular(10).r)),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25).r,
                      child: Form(
                          child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            CustomDropdown(
                              bottomPadding: 23.r,
                              textButtonVisible: false,
                              isPrefixIcon: false,
                              isPrefixIconImage: false,
                              labelText: 'Select Bank',
                              prefixIcon: accountBalance,
                            ),
                            CustomInput(
                                labelText: 'Account Number',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: false),
                            CustomInput(
                                labelText: 'Registered Phone Number',
                                bottomPadding: 76.r,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: false),
                            CustomButton(
                              customFunction: () => {},
                              buttonWidth: 300.w,
                              buttonHeight: 61.h,
                              buttonColor: greenColor,
                              buttonText: 'PROCEED',
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
          )),
    ));
  }
}
