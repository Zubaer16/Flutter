import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/font_storage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage(
      {super.key,
      required this.imageUrl,
      required this.imageHeigth,
      required this.sizedBoxHeight,
      required this.heading,
      required this.description});

  final String imageUrl;
  final double imageHeigth;
  final double sizedBoxHeight;
  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 114.h,
          width: MediaQuery.of(context).size.width,
        ),
        Image.asset(
          imageUrl,
          width: 373.w,
          height: imageHeigth,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        SizedBox(
          width: 364.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: poppins,
                    fontWeight: FontWeight.w600,
                    height: 36.0.toFigmaHeight(24.sp)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                description,
                style: TextStyle(
                    fontSize: 18.sp,
                    fontFamily: poppins,
                    fontWeight: FontWeight.w300,
                    height: 27.0.toFigmaHeight(18.sp)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
