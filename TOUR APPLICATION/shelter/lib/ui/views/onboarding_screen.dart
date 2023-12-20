import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shelter/helper/onboarding_helper.dart';
import 'package:shelter/models/onboarding_model.dart';

class OnboardingScreen extends StatelessWidget {
  List<OnboardingModel>? onboardingData;

  OnboardingScreen({super.key});
  Future<void> getData() async {
    onboardingData = await OnboardingHelper().readJson();
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Lottie.asset(onboardingData!.isNotEmpty
                    ? onboardingData![0].title
                    : 'null')),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      )),
    );
  }
}
