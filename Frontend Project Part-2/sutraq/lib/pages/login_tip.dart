import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';

class LoginTipScreen extends StatelessWidget {
  const LoginTipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tipBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 118.h,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset('images/tip.png')),
          SizedBox(
            height: 374.h,
          ),
          CustomButton(
            customFunction: () {
              Get.toNamed(dashboard_screen);
            },
            buttonText: 'Got It!',
            buttonWidth: 295.w,
            buttonFontSize: 16.sp,
            buttonTextWeight: FontWeight.w500,
            buttonColor: greenColor,
          )
        ],
      ),
    );
  }
}
