import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import '../../route/route_manage.dart';
import '../../storage/color_storage.dart';
import '../../storage/font_storage.dart';
import '../components/custom_button.dart';

class LoginOtpScreen extends StatelessWidget {
  const LoginOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 167.h,
            ),
            Center(
              child: Image.asset(
                'images/pvLogo.png',
                height: 149.h,
                width: 149.w,
              ),
            ),
            SizedBox(
              height: 88.h,
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter 6 digit OTP code',
                    style: TextStyle(
                        color: black3A2F2F,
                        fontSize: 18.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w300,
                        height: 27.0.toFigmaHeight(18.sp)),
                  ),
                  SizedBox(
                      width: 322.w,
                      height: 30.h,
                      child: TextFormField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        maxLength: 6,
                        decoration: const InputDecoration(counterText: ''),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 54.h,
            ),
            CustomButton(
                buttonText: 'Continue',
                onPressed: () {
                  Get.toNamed(successLogin);
                }),
          ],
        ),
      ),
    );
  }
}
