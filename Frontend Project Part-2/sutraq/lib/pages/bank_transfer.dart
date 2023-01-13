import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/storage/color_storage.dart';

import '../route/route_mange.dart';
import '../storage/icon_storage.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xffe5e5e5),
          body: SingleChildScrollView(
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
                          'Bank Transfer',
                          style: TextStyle(
                              color: const Color(0xff08083d),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.4),
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
                      height: 32.h,
                      width: 296.w,
                      child: Text(
                        'Ensure to fill in the neccessary details of the \n recipient in order to continue',
                        style: TextStyle(
                            color: Color(0xff000000).withOpacity(0.5),
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
                    height: 759.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10).r,
                            topRight: Radius.circular(10).r)),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 33).r,
                        child: Form(
                            child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              CustomDropdown(
                                widht: 300.w,
                                bottomPadding: 23.r,
                                textButtonVisible: true,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                labelText: 'Select Your Account',
                                prefixIcon: accountBalance,
                                textButtonOnpressed: () => {
                                  Get.toNamed(add_new_bank_transfer_account)
                                },
                              ),
                              CustomDropdown(
                                widht: 300.w,
                                bottomPadding: 23.r,
                                textButtonVisible: false,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                labelText: 'Recipients Country',
                                prefixIcon: locationOnOutlined,
                                textButtonOnpressed: () => {},
                              ),
                              CustomDropdown(
                                widht: 300.w,
                                bottomPadding: 23.r,
                                textButtonVisible: false,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                labelText: 'Recipients Destination',
                                prefixIcon: accountBalance,
                                textButtonOnpressed: () => {},
                              ),
                              CustomInput(
                                width: 300.w,
                                labelText: 'Recipients Account Name',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                prefixIcon: accountBoxOutlined,
                                placeholder: true,
                                placeholderText: 'Enter Account Name',
                              ),
                              CustomInput(
                                width: 300.w,
                                labelText: 'Account Number',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                prefixIcon: dialPad,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: true,
                                placeholderText: 'Enter Account Number',
                              ),
                              CustomInput(
                                  width: 300.w,
                                  labelText: 'Amount',
                                  bottomPadding: 23.r,
                                  isPrefixIcon: true,
                                  isPrefixIconImage: true,
                                  prefixIconImageAsset: 'images/N.png',
                                  isSuffixIcon: false,
                                  placeholder: false),
                              CustomButton(
                                onPressed: () =>
                                    {Get.toNamed(transfer_summery)},
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
            ),
          )),
    ));
  }
}
