import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class SuccessLogin extends StatefulWidget {
  const SuccessLogin({super.key});

  @override
  State<SuccessLogin> createState() => _SuccessLoginState();
}

class _SuccessLoginState extends State<SuccessLogin> {
  Timer? pageChangeTimer;

  @override
  void initState() {
    pageChangeTimer =
        Timer(const Duration(seconds: 1), () => Get.toNamed(dashboardScreen));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageChangeTimer!.cancel();
    super.dispose();
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
