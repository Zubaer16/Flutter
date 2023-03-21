// ignore_for_file: non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

class Walkthrough extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final double? padding_left;
  final double? padding_top;

  final double? container_height;
  final String? stack_1st_image;
  final double? stack_1st_image_top;
  final double? stack_1st_image_height;
  final double? stack_2nd_image_top;
  final double? stack_2nd_image_left;
  final double? stack_2nd_image_height;
  final double? stack_2nd_image_width;
  final String? stack_2nd_image;
  final String? big_text;
  final String? small_text;

  const Walkthrough({
    super.key,
    this.padding_left,
    this.padding_top,
    this.container_height,
    required this.stack_1st_image,
    this.stack_1st_image_top,
    this.stack_1st_image_height,
    required this.stack_2nd_image,
    this.stack_2nd_image_top,
    this.stack_2nd_image_left,
    this.stack_2nd_image_height,
    this.stack_2nd_image_width,
    this.big_text,
    this.small_text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: padding_left ?? 0,
            top: padding_top ?? 0,
          ),
          child: SizedBox(
            height: container_height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: stack_1st_image_top,
                  child: Image.asset(
                    '$stack_1st_image',
                    height: stack_1st_image_height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: stack_2nd_image_top,
                  left: stack_2nd_image_left,
                  child: Image.asset(
                    '$stack_2nd_image',
                    height: stack_2nd_image_height,
                    width: stack_2nd_image_width,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 61.h,
        ),
        Container(
          decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              )),
          height: 221.h,
          width: MediaQuery.of(context).size.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$big_text',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: gelion),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Text(
                    '$small_text',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: circularStd),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
        )
      ],
    );
  }
}
