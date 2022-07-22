import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';

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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 7).r,
                child: Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBalckColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18).r,
              child: Theme(
                  data: ThemeData(
                      inputDecorationTheme: const InputDecorationTheme(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xFFC5C5C5))))),
                  child: SizedBox(
                      width: 307.w,
                      height: 57.h,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 22).r,
                              child: const Icon(
                                emailIcon,
                                color: greenColor,
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: focusBlueColor))),
                      ))),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 7).r,
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: lightBalckColor,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Theme(
                data: ThemeData(
                    inputDecorationTheme: const InputDecorationTheme(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC5C5C5))))),
                child: SizedBox(
                    width: 307.w,
                    height: 57.h,
                    child: TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 15.71).r,
                            child: const Icon(
                              eyeIcon,
                              color: Color(0xFFC5C5C5),
                            ),
                          ),
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.only(left: 15, right: 22).r,
                            child: const Icon(
                              passowrdIcon,
                              color: greenColor,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: focusBlueColor))),
                    ))),
            TextButton(
                style: TextButton.styleFrom(primary: greenColor),
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
              customFunction: () {
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
                    style: TextButton.styleFrom(primary: greenColor),
                    onPressed: () {},
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
