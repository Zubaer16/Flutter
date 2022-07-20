// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, camel_case_types, unnecessary_this, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/color_storage.dart';

class WalkthroughPic extends StatelessWidget {
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
  final Color? color_1;
  final Color? color_2;
  final Color? color_3;

  const WalkthroughPic(
      {this.padding_left,
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
      this.color_1,
      this.color_2,
      this.color_3});

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
                    '${this.stack_1st_image}',
                    height: stack_1st_image_height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: stack_2nd_image_top,
                  left: stack_2nd_image_left,
                  child: Image.asset(
                    '${this.stack_2nd_image}',
                    height: stack_2nd_image_height,
                    width: stack_2nd_image_width,
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 27.5, top: 27.5).r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 6.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: this.color_1 ?? greenColor,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                height: 6.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: this.color_2 ?? greenColor,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10).r,
                height: 6.h,
                width: 6.w,
                decoration: BoxDecoration(
                  color: this.color_3 ?? greenColor,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(30),
                topRight: const Radius.circular(30),
              )),
          height: 221.h,
          width: MediaQuery.of(context).size.width,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${this.big_text}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27.sp,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Text(
                    '${this.small_text}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
        )
      ],
    );
  }
}
