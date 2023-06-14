import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () => Get.toNamed(chooseLanguageScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteF4F5F7,
      body: Center(
        child: Image.asset(
          'images/pvLogo.png',
          height: 176.h,
          width: 176.w,
        ),
      ),
    );
  }
}
