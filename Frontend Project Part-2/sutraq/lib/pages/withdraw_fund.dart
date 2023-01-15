// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class WithdrawFund extends StatelessWidget {
  const WithdrawFund({super.key});

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
                        'Withdraw Funds',
                        style: TextStyle(
                          color: Color(0xff08083d),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10).r,
                    child: CustomCircleButton(onPressed: () => {Get.back()}),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ).r,
                child: SizedBox(
                    height: 48.h,
                    width: 189.w,
                    child: Text(
                      'Ensure to fill in the neccessary details of the recipient in order to continue',
                      style: TextStyle(
                        color: Color(0xff000000).withOpacity(.5),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
              SizedBox(
                height: 75.h,
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
                      borderRadius: BorderRadius.all(Radius.circular(10).r)),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 69).r,
                      child: Form(
                          child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            CustomInput(
                              width: 300.w,
                              labelText: 'Amount',
                              bottomPadding: 23.r,
                              isPrefixIcon: true,
                              isPrefixIconImage: true,
                              prefixIconImageAsset: 'images/N.png',
                              isSuffixIcon: false,
                              placeholder: true,
                              placeholderText: 'Enter Amount',
                            ),
                            CustomDropdown(
                              widht: 300.w,
                              bottomPadding: 84.r,
                              textButtonVisible: true,
                              textButtonOnpressed: () =>
                                  {Get.toNamed(add_new_bank_account)},
                              isPrefixIcon: true,
                              prefixIcon: accountBalance,
                              isPrefixIconImage: false,
                              labelText: 'Select Account',
                            ),
                            CustomButton(
                              onPressed: () => {},
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
                    Positioned(
                      top: -45.h,
                      left: 59.w,
                      child: ThirdSlider(
                        height: 89.h,
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )),
    ));
    ;
  }
}
