// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/walkthrough_pic.dart';

class Walkthrough_Screen extends StatefulWidget {
  @override
  State<Walkthrough_Screen> createState() => _Walkthrough_ScreenState();
}

class _Walkthrough_ScreenState extends State<Walkthrough_Screen> {
  List<Widget> pic = [
    Walkthrough_Pic(
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
    ),
    Walkthrough_Pic(
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
    ),
    Walkthrough_Pic(
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
    ),
  ];

  int changeValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: PageView.builder(
              itemCount: pic.length,
              itemBuilder: (context, index) {
                return pic[index];
              }),
        ),
      ],
    ));
  }
}
