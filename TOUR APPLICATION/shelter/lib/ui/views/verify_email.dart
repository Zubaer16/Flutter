import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
          ),
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
              'Just click on the link in that table to complete your signup. If you don\'t see it you may need to check your spam folder.',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text(
            'zubaer.16@gmail.com',
            style: AppStyles.textStyle_10,
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
