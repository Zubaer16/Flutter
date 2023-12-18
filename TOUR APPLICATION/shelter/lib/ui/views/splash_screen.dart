import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/routes/route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(
          seconds: 3,
        ),
        () => Get.toNamed(onboarding));
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/app-logo.png',
              width: 200.w,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              AppStrings.appName,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      )),
    );
  }
}
