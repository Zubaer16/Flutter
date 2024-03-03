import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please verify your email',
                style: AppStyles.textStyle_9,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'You\'re almost there! We sent an email to',
                textAlign: TextAlign.center,
              ),
              Text(
                'zubaer.16@gmail.com',
                style: AppStyles.textStyle_10,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20).r,
                child: const Text(
                  'Just click on the link in that email to complete your signup. If you don\'t see it you may need to check your spam folder.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              const Text(
                'Still can\'t find the email?',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                  width: 200.w,
                  child: VioletButton(
                      title: 'Resend Email', onAction: () {}, value: false.obs))
            ]),
      ),
    );
  }
}
