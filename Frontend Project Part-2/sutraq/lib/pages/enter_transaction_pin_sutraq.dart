import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterTransactionPinSutraq extends StatelessWidget {
  const EnterTransactionPinSutraq({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffffffff),
            body: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20).r,
                    child: CustomCircleButton(onPressed: () => {Get.back()}),
                  ),
                ),
                SizedBox(
                  height: 85.h,
                ),
                Icon(
                  verifiedUser,
                  size: 40,
                  color: greenColor,
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  'Enter Transaction Pin',
                  style: TextStyle(
                      color: const Color(0xff08083d),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                      fontFamily: gelion),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  'Enter your PIN to authorize this account',
                  style: TextStyle(
                      color: const Color(0xff7A869A),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      fontFamily: circularStd),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 52.h,
                ),
                SizedBox(
                  width: 248.w,
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    onChanged: (value) => {
                      if (value.length == 4)
                        {Get.toNamed(transaction_success_sutraq_transfer)}
                    },
                    keyboardType: TextInputType.number,
                    autoFocus: true,
                    showCursor: true,
                    cursorColor: Colors.black,
                    cursorHeight: 15.h,
                    obscureText: true,
                    obscuringCharacter: '*',
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.all(Radius.circular(4).r),
                        fieldHeight: 48.h,
                        fieldWidth: 50.w,
                        activeFillColor: Colors.white,
                        inactiveColor: greenColor,
                        selectedColor: greenColor),
                  ),
                )
              ],
            )));
  }
}
