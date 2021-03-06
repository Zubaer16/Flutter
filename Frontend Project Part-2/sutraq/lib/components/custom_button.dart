// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback customFunction;
  final double? buttonHeight;
  final double? buttonWidth;
  final String? buttonText;
  final Color? buttonColor;
  final FontWeight? buttonTextWeight;
  final double? buttonFontSize;
  const CustomButton(
      {Key? key,
      required this.customFunction,
      this.buttonHeight,
      this.buttonWidth,
      this.buttonText,
      this.buttonColor,
      this.buttonTextWeight,
      this.buttonFontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight ?? 61.h,
      width: buttonWidth ?? 307.w,
      child: ElevatedButton(
        onPressed: () {
          customFunction();
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(buttonColor ?? buttonBlackColor),
        ),
        child: Text(
          buttonText ?? 'Custom button',
          style: TextStyle(
              fontSize: buttonFontSize ?? 17.sp,
              fontWeight: buttonTextWeight ?? FontWeight.w700),
        ),
      ),
    );
  }
}
