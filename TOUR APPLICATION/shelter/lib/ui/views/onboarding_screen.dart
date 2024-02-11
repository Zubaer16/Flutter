import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/helper/onboarding_helper.dart';
import 'package:shelter/models/onboarding_model.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final box = GetStorage();
  List<OnboardingModel>? onboardingData;
  RxInt _currentIndex = 0.obs;
  getData() async {
    List<OnboardingModel>? asyncData = await OnboardingHelper().readJson();
    setState(() {
      onboardingData = asyncData;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();

    return PopScope(
      canPop: false,
      child: SafeArea(
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
                      color: AppColors.brightGray,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      shadows: [
                        BoxShadow(
                          color: AppColors.lightGray,
                          blurRadius: 13.r,
                          offset: Offset(5.w, 5.h),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: AppColors.white,
                          blurRadius: 10.r,
                          offset: Offset(-5.w, -5.h),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: AppColors.lightGray_1,
                          blurRadius: 10.r,
                          offset: Offset(5.w, -5.h),
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: AppColors.lightGray_1,
                          blurRadius: 10.r,
                          offset: Offset(-5.w, 5.h),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0).r,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            onboardingData != null
                                ? Obx(() => Text(
                                      onboardingData![_currentIndex.toInt()]
                                          .title,
                                      style: AppStyles.textStyle_1,
                                    ))
                                : Container(),
                            SizedBox(height: 15.h),
                            onboardingData != null
                                ? Obx(
                                    () => Text(
                                      onboardingData![_currentIndex.toInt()]
                                          .description,
                                      style: AppStyles.textStyle_2,
                                    ),
                                  )
                                : Container(),
                            SizedBox(height: 34.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DotsIndicator(
                                  dotsCount: onboardingData != null
                                      ? onboardingData!.length
                                      : 3,
                                  position: _currentIndex.toInt(),
                                  decorator: DotsDecorator(
                                    activeColor: Colors.black,
                                    color: AppColors.sonicSilver,
                                    activeSize: Size.fromRadius(8.r),
                                    size: Size.fromRadius(6.r),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (_currentIndex.toInt() ==
                                        onboardingData!.length - 1) {
                                      box.write('introPage', 1);
                                      Get.toNamed(signUp);
                                    } else {
                                      _currentIndex++;
                                    }
                                  },
                                  child: Container(
                                    width: 37.w,
                                    height: 37.h,
                                    decoration: ShapeDecoration(
                                      color: AppColors.brightGray,
                                      shape: const OvalBorder(),
                                      shadows: [
                                        BoxShadow(
                                          color: AppColors.lightGray,
                                          blurRadius: 13.r,
                                          offset: Offset(5.w, 5.h),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: AppColors.white,
                                          blurRadius: 10.r,
                                          offset: Offset(-5.w, -5.h),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: AppColors.lightGray_1,
                                          blurRadius: 10.r,
                                          offset: Offset(5.w, -5.h),
                                          spreadRadius: 0,
                                        ),
                                        BoxShadow(
                                          color: AppColors.lightGray_1,
                                          blurRadius: 10.r,
                                          offset: Offset(-5.w, 5.h),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Icon(
                                      AppIcons.doubleRightArrow,
                                      size: 37.w,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
