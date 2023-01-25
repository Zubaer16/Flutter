import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class WelcomeBackScreen extends StatelessWidget {
  const WelcomeBackScreen({Key? key}) : super(key: key);

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
            Padding(
              padding: const EdgeInsets.only(top: 10).r,
              child: SutraqLogo(
                width: 94.w,
                height: 86.h,
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6).r,
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w600,
                    color: welcomeBalckColor),
              ),
            ),
            Text(
              'Enter your details to continue',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: lightBalckColor),
            ),
            SizedBox(
              height: 43.h,
            ),
            CustomInput(
                labelText: 'Email Address',
                bottomPadding: 18.r,
                width: 307.w,
                isPrefixIcon: true,
                prefixIcon: emailIcon,
                isPrefixIconImage: false,
                isSuffixIcon: false,
                placeholder: false),
            CustomInput(
                labelText: 'Password',
                width: 307.w,
                isPrefixIcon: true,
                prefixIcon: passowrdIcon,
                isPrefixIconImage: false,
                isSuffixIcon: true,
                placeholder: false),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: greenColor),
                onPressed: () {
                  Get.toNamed(forgot_password_screen);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 28).r,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 11.sp),
                    ),
                  ),
                )),
            CustomButton(
              onPressed: () {
                Get.toNamed(login_tip_screen);
              },
              buttonColor: greenColor,
              buttonText: 'LOGIN',
              buttonTextWeight: FontWeight.w500,
              buttonFontSize: 16.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Need an Account?',
                    style: TextStyle(
                        color: lightBalckColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400)),
                TextButton(
                    style: TextButton.styleFrom(foregroundColor: greenColor),
                    onPressed: () {
                      Get.toNamed(open_sutraq_account);
                    },
                    child: Text(
                      'Try Sutraq',
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
            SizedBox(
              height: 43.h,
            ),
            Image.asset(
              'images/fingerprint.png',
              width: 48.w,
              height: 48.h,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9).r,
              child: Text(
                'Tap to use fingerprint',
                style: TextStyle(
                    color: greenColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
