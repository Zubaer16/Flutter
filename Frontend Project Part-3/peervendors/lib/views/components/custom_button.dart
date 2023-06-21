import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 356.w,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: blue5364F4,
              side: const BorderSide(color: blue00A3FF)),
          onPressed: onPressed,
          child: Container(
            padding: const EdgeInsets.only(left: 26).r,
            width: MediaQuery.of(context).size.width,
            child: Text(
              buttonText,
              style: TextStyle(
                color: whiteFFFFFF,
                fontFamily: poppins,
                fontWeight: FontWeight.w400,
                fontSize: 20.sp,
                height: 30.0.toFigmaHeight(20.sp),
              ),
              textAlign: TextAlign.start,
            ),
          )),
    );
  }
}
