import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:sutraq/components/sutraq_logo.dart';

import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Get.toNamed(walkthrough_screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBackgroundColor,
      body: Center(
          child: SutraqLogo(
        width: 118.h,
        height: 108.h,
      )),
    );
  }
}
