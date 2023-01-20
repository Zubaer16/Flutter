//ignore_for_file:prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class GoodJob extends StatelessWidget {
  const GoodJob({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 29.h,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 21).r,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  cancelIcon,
                  color: greenColor,
                  size: 40.w,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 180.h,
          ),
          Text(
            'Good Job!',
            style: TextStyle(
              color: Color(0xff08083d),
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          Text(
            'Let’s try funding this account',
            style: TextStyle(
              color: Color(0xff000000).withOpacity(.5),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 41.h,
          ),
          CustomButton(
            onPressed: () => {Get.toNamed(good_job)},
            buttonColor: greenColor,
            buttonText: 'CONFIRM',
            buttonFontSize: 16.sp,
            buttonHeight: 61.h,
            buttonWidth: 302.w,
            buttonTextWeight: FontWeight.w500,
          )
        ],
      ),
    ));
  }
}
