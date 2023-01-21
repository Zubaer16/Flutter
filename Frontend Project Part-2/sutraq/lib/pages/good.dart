// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';

class Good extends StatelessWidget {
  const Good({super.key});

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
              'Good!',
              style: TextStyle(
                  color: greenColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Now tell us a bit about yourself',
              style: TextStyle(
                  color: Color(0xffF0F0F0),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 170.h,
            ),
            CustomButton(
              onPressed: () {},
              buttonText: 'KYC'.toUpperCase(),
              buttonWidth: 295.w,
              buttonFontSize: 16.sp,
              buttonTextWeight: FontWeight.w500,
              buttonColor: greenColor,
            )
          ],
        ),
      ),
    );
    ;
  }
}
