import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class Watch extends StatelessWidget {
  const Watch(
      {super.key,
      required this.imageLink,
      required this.imageName,
      required this.model,
      required this.price});

  final String imageLink;
  final String imageName;
  final String model;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 170.34.w,
          height: 217.10.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19393939),
                blurRadius: 60,
                offset: Offset(0, 30),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: SizedBox(
              width: 136.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 119.1.h),
                  Text(
                    imageName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black000000.withOpacity(.9),
                      fontSize: 22.sp,
                      fontFamily: raleway,
                      fontWeight: FontWeight.w600,
                      height: 22.29.toFigmaHeight(22.sp),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text(
                    model,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: white858585.withOpacity(0.9),
                        fontSize: 16.sp,
                        fontFamily: raleway,
                        fontWeight: FontWeight.w600,
                        height: 18.78.toFigmaHeight(16.sp)),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Text.rich(TextSpan(
                      text: '\$ ',
                      style: TextStyle(
                          color: blue5956E9,
                          fontSize: 17.sp,
                          fontFamily: raleway,
                          fontWeight: FontWeight.w700,
                          height: 19.96.toFigmaHeight(17.sp)),
                      children: [
                        TextSpan(
                          text: price.toString(),
                          style: TextStyle(
                              color: blue5956E9,
                              fontSize: 17.sp,
                              fontFamily: raleway,
                              fontWeight: FontWeight.w700,
                              height: 19.96.toFigmaHeight(17.sp)),
                        )
                      ])),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10.81.w,
          bottom: 114.18.h,
          child: Image.asset(
            imageLink,
            height: 151.97.h,
            width: 147.11.w,
          ),
        ),
      ],
    );
  }
}
