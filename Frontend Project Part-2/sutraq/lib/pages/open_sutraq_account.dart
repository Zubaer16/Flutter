import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

class OpenSutraqAccount extends StatelessWidget {
  const OpenSutraqAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tipBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/tipBackground.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              height: 156.h,
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/tip.png')),
            Text(
              'Welcome to Sutraq!',
              style: TextStyle(
                  color: greenColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: gelion),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Let’s start by opening a new sutraq account',
              style: TextStyle(
                  color: Color(0xffF0F0F0),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: dmSans),
            ),
            SizedBox(
              height: 170.h,
            ),
            CustomButton(
              onPressed: () {
                Get.toNamed(create_sutraq_account);
              },
              buttonText: 'Open Account'.toUpperCase(),
              buttonWidth: 295.w,
              buttonFontSize: 16.sp,
              buttonTextWeight: FontWeight.w500,
              buttonColor: greenColor,
            )
          ],
        ),
      ),
    );
  }
}
