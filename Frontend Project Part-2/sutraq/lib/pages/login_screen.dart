import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/color_storage.dart';
import 'package:sutraq/components/icon_storage.dart';

import 'package:sutraq/components/sutraq_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                            borderSide: BorderSide(color: Color(0xFFC5C5C5))))),
                child: SizedBox(
                    width: 307.w,
                    height: 57.h,
                    child: TextFormField(
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
          Padding(
            padding: const EdgeInsets.only(bottom: 18).r,
            child: Theme(
                data: ThemeData(
                    inputDecorationTheme: const InputDecorationTheme(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC5C5C5))))),
                child: SizedBox(
                    width: 307.w,
                    height: 57.h,
                    child: TextFormField(
                      decoration: InputDecoration(
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
          ),
        ]),
      ),
    );
  }
}
