import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/font_storage.dart';

import '../../storage/color_storage.dart';

class EmailPhoneRegister extends StatelessWidget {
  const EmailPhoneRegister({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> stackButton = [
      Container(
        height: 39.h,
        width: 110.w,
        decoration: BoxDecoration(
            color: blue5364F4,
            borderRadius: BorderRadius.all(Radius.circular(10)).r),
        child: Text(
          'Phone',
          style: TextStyle(
              color: whiteF4F5F7,
              fontSize: 20.sp,
              fontFamily: poppins,
              fontWeight: FontWeight.w500,
              height: 30.0.toFigmaHeight(20.sp)),
          textAlign: TextAlign.center,
        ),
      ),
      Positioned(
        left: 100.w,
        child: Container(
          height: 39.h,
          width: 110.w,
          decoration: BoxDecoration(
              color: whiteC4C4C4,
              borderRadius: BorderRadius.all(Radius.circular(10)).r),
          child: Text(
            'E-mail',
            style: TextStyle(
              color: whiteF4F5F7,
              fontSize: 20.sp,
              fontFamily: poppins,
              fontWeight: FontWeight.w500,
              height: 30.0.toFigmaHeight(20.sp),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ];
    return Center(
      child: SizedBox(
        width: 210.w,
        child: Stack(
          children: [stackButton[1], stackButton[0]],
        ),
      ),
    );
  }
}
