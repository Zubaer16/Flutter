// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/color_storage.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () => Get.toNamed(intro_screen));

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
