import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/onboarding_page.dart';

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

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: onBoardingPage.length,
              itemBuilder: (context, index) {
                return onBoardingPage[index];
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: null,
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
                onPressed: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: whiteC4C4C4,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular()))),
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontFamily: poppins,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                      height: 36.0.toFigmaHeight(24.sp),
                      color: black3A3030),
                ))
          ],
        )
      ],
    ));
  }
}
