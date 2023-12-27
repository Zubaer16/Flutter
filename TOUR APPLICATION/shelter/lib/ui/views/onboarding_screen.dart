import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/helper/onboarding_helper.dart';
import 'package:shelter/models/onboarding_model.dart';
import 'package:shelter/ui/styles/styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<OnboardingModel>? onboardingData;
  final RxInt _currentIndex = 0.obs;
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
                    ? Obx(
                        () => Lottie.asset(
                            onboardingData![_currentIndex.toInt()].source),
                      )
                    : Container()),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: ShapeDecoration(
                    color: AppColors.onboardingShowdowColorWhite1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    shadows: [
                      BoxShadow(
                        color: AppColors.onboardingShowdowColorWhite2,
                        blurRadius: 13.r,
                        offset: Offset(5.w, 5.h),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: AppColors.onboardingShowdowColorWhite3,
                        blurRadius: 10.r,
                        offset: Offset(-5.w, -5.h),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: AppColors.onboardingShowdowColorblue,
                        blurRadius: 10.r,
                        offset: Offset(5.w, -5.h),
                        spreadRadius: 0,
                      ),
                      BoxShadow(
                        color: AppColors.onboardingShowdowColorblue,
                        blurRadius: 10.r,
                        offset: Offset(-5.w, 5.h),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        onboardingData != null
                            ? Obx(() => Text(
                                  onboardingData![_currentIndex.toInt()].title,
                                  style: AppStyles.onboardingTitleTextStyle,
                                ))
                            : Container(),
                        onboardingData != null
                            ? Obx(
                                () => Text(
                                  onboardingData![_currentIndex.toInt()]
                                      .description,
                                  style:
                                      AppStyles.onboardingDescriptionTextStyle,
                                ),
                              )
                            : Container(),
                        Row(
                          children: [
                            DotsIndicator(
                              dotsCount: onboardingData != null
                                  ? onboardingData!.length
                                  : 3,
                              position: _currentIndex.toInt(),
                              decorator: DotsDecorator(
                                activeColor: Colors.black,
                                color: AppColors.onboardingInactiveColorblack,
                                activeSize: Size.fromRadius(8.r),
                                size: Size.fromRadius(6.r),
                              ),
                            ),
                            Container(
                              width: 37.w,
                              height: 37.h,
                              decoration: ShapeDecoration(
                                color: AppColors.onboardingShowdowColorWhite1,
                                shape: OvalBorder(),
                                shadows: [
                                  BoxShadow(
                                    color:
                                        AppColors.onboardingShowdowColorWhite2,
                                    blurRadius: 13.r,
                                    offset: Offset(5, 5),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color:
                                        AppColors.onboardingShowdowColorWhite3,
                                    blurRadius: 10.r,
                                    offset: Offset(-5, -5),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: AppColors.onboardingShowdowColorblue,
                                    blurRadius: 10.r,
                                    offset: Offset(5, -5),
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color: AppColors.onboardingShowdowColorblue,
                                    blurRadius: 10.r,
                                    offset: Offset(-5, 5),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ]),
                ))
          ],
        ),
      )),
    );
  }
}