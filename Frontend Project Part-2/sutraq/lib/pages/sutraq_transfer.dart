import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class SutraqTransfer extends StatelessWidget {
  const SutraqTransfer({super.key});

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
                          'Transfer to Sutraq User',
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
                      padding: const EdgeInsets.only(top: 20).r,
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
                  height: 27.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ).r,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 550.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).r)),
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
                                  Get.toNamed(add_new_sutraq_transfer_account)
                                },
                              ),
                              CustomInput(
                                width: 300.w,
                                labelText: 'Recipients Full Name',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                prefixIcon: personOutlined,
                                placeholder: true,
                                placeholderText: 'Enter name',
                              ),
                              CustomInput(
                                width: 300.w,
                                labelText: 'Recipient Sutraq ID',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                prefixIcon: dialPad,
                                isPrefixIconImage: false,
                                isSuffixIcon: false,
                                placeholder: true,
                                placeholderText: 'Enter ID',
                              ),
                              CustomInput(
                                width: 300.w,
                                labelText: 'Amount',
                                bottomPadding: 23.r,
                                isPrefixIcon: true,
                                isPrefixIconImage: true,
                                prefixIconImageAsset: 'images/N.png',
                                isSuffixIcon: false,
                                placeholder: true,
                                placeholderText: 'Enter amount',
                              ),
                              CustomButton(
                                onPressed: () =>
                                    {Get.toNamed(enter_transaction_pin_sutraq)},
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
