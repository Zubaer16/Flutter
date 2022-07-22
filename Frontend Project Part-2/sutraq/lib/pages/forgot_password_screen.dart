import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
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
                padding: const EdgeInsets.only(top: 29, left: 21).r,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(8).r,
                      primary: greenColor),
                  onPressed: () {
                    Get.toNamed(welcome_back_screen);
                  },
                  child: Icon(
                    arrowBackIcon,
                    size: 25.w,
                  ),
                ),
              ),
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
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: welcomeBalckColor),
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
                  color: lightBalckColor),
            ),
          ),
          SizedBox(
            height: 40.h,
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
            padding: const EdgeInsets.only(bottom: 23).r,
            child: Theme(
                data: ThemeData(
                    inputDecorationTheme: const InputDecorationTheme(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC5C5C5))))),
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
          CustomButton(
            customFunction: () {
              Get.toNamed(check_inbox_screen);
            },
            buttonColor: greenColor,
            buttonText: 'RECOVER PASSWORD',
            buttonTextWeight: FontWeight.w500,
          )
        ]),
      ),
    ));
  }
}
