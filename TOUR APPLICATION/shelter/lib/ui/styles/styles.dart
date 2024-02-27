//
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';

class AppStyles {
  static final textStyle_1 = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStyle_2 = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
  );
  static final textStyle_3 = TextStyle(
    color: AppColors.violet,
    fontSize: 36.sp,
    fontWeight: FontWeight.w500,
  );
  static final textStyle_4 = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
  );
  static final textStyle_5 = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static final textStyle_6 = TextStyle(
    color: Colors.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w300,
  );
  static final textStyle_7 = TextStyle(
    color: AppColors.violet,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static final textStyle_8 = TextStyle(
    color: AppColors.violet,
    fontSize: 32.sp,
    fontWeight: FontWeight.w500,
  );
  static final textStyle_9 = TextStyle(
    color: Colors.black,
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
  );
  static inputDecorationStyle_1(String hintText) => InputDecoration(
        hintText: hintText,
        hintStyle: textStyle_5,
      );
}
