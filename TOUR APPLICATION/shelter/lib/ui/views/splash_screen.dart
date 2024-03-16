import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/routes/route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();

  Future<void> chooseScreen() async {
    var userId = box.read('uid');
    var introPage = box.read('introPage');

    if (userId == null && introPage == null) {
      Get.toNamed(onboarding);
    } else if (userId == null && introPage == 1) {
      Get.toNamed(signUp);
    } else if (userId != null && introPage == 2) {
      Get.toNamed(userForm);
    } else if (userId != null && introPage == 3) {
      Get.toNamed(privacyPolicy);
    } else {
      Get.toNamed(mainHomeScreen);
    }
  }

  @override
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ),
        () => chooseScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
