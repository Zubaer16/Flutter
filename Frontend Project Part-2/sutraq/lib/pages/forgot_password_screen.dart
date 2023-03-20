import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: const EdgeInsets.only(
                    top: 29,
                  ).r,
                  child: CustomCircleButton(onPressed: () => {Get.back()})),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          SutraqLogo(
            width: 94.w,
            height: 86.h,
          ),
          SizedBox(
            height: 28.h,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10).r,
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.w600,
                  color: welcomeBalckColor,
                  fontFamily: gelion),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              'Enter the email address associated with your account to recover password.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: lightBalckColor,
                  fontFamily: circularStd),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          CustomInput(
            isPrefixIcon: true,
            prefixIcon: emailIcon,
            isPrefixIconImage: false,
            isSuffixIcon: false,
            placeholder: false,
            labelText: 'Email Address',
            width: 307.w,
          ),
          SizedBox(
            height: 23.h,
          ),
          CustomButton(
            onPressed: () {
              Get.toNamed(check_inbox_screen);
            },
            buttonColor: greenColor,
            buttonText: 'RECOVER PASSWORD',
            buttonTextWeight: FontWeight.w500,
            buttonFontSize: 16.sp,
          )
        ]),
      ),
    ));
  }
}
