import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/onboarding_screen_provider.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_dot_indicator.dart';
import 'package:peervendors/views/components/onboarding_page.dart';
import 'package:provider/provider.dart';

final List<Widget> onBoardingPage = [
  OnboardingPage(
      imageUrl: 'images/onboarding1.png',
      imageHeigth: 301.h,
      sizedBoxHeight: 84.h,
      heading: 'Welcome To Peer Vendor',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. '),
  OnboardingPage(
    imageUrl: 'images/onboarding2.png',
    imageHeigth: 301.2.h,
    sizedBoxHeight: 83.8.h,
    heading: 'Find Your Favourite Products',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
  ),
  OnboardingPage(
    imageUrl: 'images/onboarding3.png',
    imageHeigth: 264.98.h,
    sizedBoxHeight: 120.02.h,
    heading: 'Buy & Sell Around You',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
  ),
  OnboardingPage(
    imageUrl: 'images/onboarding4.png',
    imageHeigth: 289.45.h,
    sizedBoxHeight: 95.55.h,
    heading: 'Safe & Trusted',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris imperdiet aliquam ipsum, sit amet tempus nisl pellentesque in. Proin ultrices et ligula at viverra. Etiam feugiat porta pellentesque. ',
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int nextPage = 0;
  @override
  Widget build(BuildContext context) {
    final onboardingScreenProvider =
        Provider.of<OnboardingScreenProvider>(context, listen: false);

    return WillPopScope(
      onWillPop: () async {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return false;
      },
      child: Scaffold(
          backgroundColor: whiteF4F5F7,
          body: Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    PageView.builder(
                        controller: _pageController,
                        itemCount: onBoardingPage.length,
                        onPageChanged: (index) {
                          onboardingScreenProvider.setValue = index;
                          if (onboardingScreenProvider.getValue == 3) {
                            nextPage = 1;
                          } else {
                            nextPage = 0;
                          }
                        },
                        itemBuilder: (context, index) {
                          return onBoardingPage[index];
                        }),
                    Positioned(
                        top: 450.h,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ...List.generate(
                                  onBoardingPage.length,
                                  (index) => Consumer<OnboardingScreenProvider>(
                                        builder: (context, val, child) =>
                                            CustomDotIndicator(
                                                isActive:
                                                    index == val.getValue),
                                      ))
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Get.toNamed(authenticationScreen);
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                                  left: 34.0, bottom: 35, right: 34, top: 34)
                              .r,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          minimumSize: Size.zero),
                      child: Text(
                        'skip'.toUpperCase(),
                        style: TextStyle(
                            fontFamily: poppins,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                            height: 30.0.toFigmaHeight(20.sp),
                            color: pinkFF7465),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(microseconds: 1000),
                            curve: Curves.easeIn);
                        if (nextPage > 0) {
                          nextPage = 0;
                          Get.toNamed(authenticationScreen);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: whiteC4C4C4,
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(50))
                                  .r)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                                top: 32, left: 85, right: 74, bottom: 33)
                            .r,
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontFamily: poppins,
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                              height: 36.0.toFigmaHeight(24.sp),
                              color: black3A3030),
                        ),
                      ))
                ],
              )
            ],
          )),
    );
  }
}
