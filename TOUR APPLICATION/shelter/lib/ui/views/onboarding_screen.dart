import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:shelter/helper/onboarding_helper.dart';
import 'package:shelter/models/onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingModel>? onboardingData;
  getData() async {
    List<OnboardingModel>? asyncData = await OnboardingHelper().readJson();
    setState(() {
      onboardingData = asyncData;
    });
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
                child: onboardingData != null
                    ? Lottie.asset(onboardingData![0].source)
                    : Container()),
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
