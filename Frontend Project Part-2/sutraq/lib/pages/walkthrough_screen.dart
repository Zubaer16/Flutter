// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/color_storage.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/walkthrough.dart';
import 'package:sutraq/route/route_mange.dart';

class WalkthroughScreen extends StatelessWidget {
  WalkthroughScreen({Key? key}) : super(key: key);

  final List<Widget> pic = [
    Walkthrough(
      padding_left: 15.r,
      padding_top: 30.r,
      container_height: 360.h,
      stack_1st_image: 'images/walkthroughFrame-1.png',
      stack_1st_image_top: 50.h,
      stack_1st_image_height: 208.h,
      stack_2nd_image: 'images/walkthrough-1.png',
      stack_2nd_image_top: 99.h,
      stack_2nd_image_left: 60.w,
      stack_2nd_image_height: 257.h,
      stack_2nd_image_width: 264.w,
      big_text: 'Send Money Anywhere',
      small_text:
          'With our unique technology, you can get money anywhere in the world.',
      color_1: dotWhiteColor,
    ),
    Walkthrough(
      padding_left: 0.r,
      padding_top: 30.r,
      container_height: 360.h,
      stack_1st_image: 'images/walkthroughFrame-2.png',
      stack_1st_image_top: 50.h,
      stack_1st_image_height: 208.h,
      stack_2nd_image: 'images/walkthrough-2.png',
      stack_2nd_image_top: 90.h,
      stack_2nd_image_left: 50.w,
      stack_2nd_image_height: 257.h,
      stack_2nd_image_width: 264.w,
      big_text: 'Safe & Secured',
      small_text:
          "Safety of your funds is guaranteed. We've got you covered 24/7.",
      color_2: dotWhiteColor,
    ),
    Walkthrough(
      padding_left: 0,
      padding_top: 30.r,
      container_height: 360.h,
      stack_1st_image: 'images/walkthroughFrame-3.png',
      stack_1st_image_top: 50.h,
      stack_1st_image_height: 208.h,
      stack_2nd_image: 'images/walkthrough-3.png',
      stack_2nd_image_top: 95.h,
      stack_2nd_image_left: 60.w,
      stack_2nd_image_height: 257.h,
      stack_2nd_image_width: 264.w,
      big_text: 'Unbeatable Support',
      small_text:
          'Send money to other sutraq users free of charge, with no additional fee.',
      color_3: dotWhiteColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
          child: PageView.builder(
              itemCount: pic.length,
              itemBuilder: (context, index) {
                return pic[index];
              }),
        ),
        Container(
          color: greenColor,
          height: 140.h,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomButton(
                  buttonText: 'LOGIN',
                  customFunction: () {
                    Get.toNamed(splash_screen);
                  }),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'TRY SUTRAQ',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    color: Colors.white),
              )
            ],
          ),
        )
      ],
    ));
  }
}
