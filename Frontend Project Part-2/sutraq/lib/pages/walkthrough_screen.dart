// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/walkthrough.dart';
import 'package:sutraq/route/route_mange.dart';

class WalkthroughScreen extends StatefulWidget {
  WalkthroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              PageView.builder(
                  controller: _pageController,
                  itemCount: pic.length,
                  onPageChanged: (index) => {
                        setState(() {
                          _pageIndex = index;
                        })
                      },
                  itemBuilder: (context, index) {
                    return pic[index];
                  }),
              Positioned(
                top: 418.h,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                          pic.length,
                          (index) => DotIndicator(
                                isActive: index == _pageIndex,
                              ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: greenColor,
          height: 140.h,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomButton(
                  buttonText: 'LOGIN',
                  onPressed: () {
                    Get.toNamed(welcome_back_screen);
                  }),
              SizedBox(
                height: 2.h,
              ),
              TextButton(
                  onPressed: () => {Get.toNamed(open_sutraq_account)},
                  style: TextButton.styleFrom(
                      // padding: EdgeInsets.zero,
                      // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      // minimumSize: Size.zero
                      ),
                  child: Text(
                    'Try Sutraq'.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp,
                        color: Colors.white),
                  ))
            ],
          ),
        )
      ],
    ));
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({Key? key, required this.isActive}) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: 6.h,
        width: 6.h,
        decoration: BoxDecoration(
          color: isActive ? Color.fromARGB(29, 0, 0, 0) : greenColor,
          borderRadius: BorderRadius.circular(3.r),
        ),
      ),
    );
  }
}
