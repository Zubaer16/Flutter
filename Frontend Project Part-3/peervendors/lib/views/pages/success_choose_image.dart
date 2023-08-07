import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class SuccessChooseImage extends StatefulWidget {
  const SuccessChooseImage({super.key});

  @override
  State<SuccessChooseImage> createState() => _SuccessChooseImageState();
}

class _SuccessChooseImageState extends State<SuccessChooseImage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () => Get.toNamed(dashboardScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 345.h,
        ),
        Center(
          child: Image.asset(
            'images/check.png',
            height: 118.h,
            width: 118.w,
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        Text(
          'Well-Done!',
          style: TextStyle(
              color: black3A2F2F,
              fontSize: 40.sp,
              fontFamily: poppins,
              fontWeight: FontWeight.w600,
              height: 60.0.toFigmaHeight(40.sp)),
        )
      ]),
    );
  }
}
