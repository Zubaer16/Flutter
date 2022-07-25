import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

final slider = [FirstSlider(), SecondSlider(), ThirdSlider()];
int _currentItem = 0;

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFF051F0E),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 27).r,
                  child: SizedBox(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 2).r,
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF3417A8),
                                    Color(0xff4e17ab),
                                  ],
                                  begin: Alignment.bottomLeft,
                                  stops: [1, 0.53]),
                              shape: BoxShape.circle),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'OP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      title: Text('Hello, Precious!',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      subtitle: Text(
                        'Su/Pre123',
                        style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      trailing: Stack(children: [
                        Icon(
                          Icons.notifications,
                          size: 27.w,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        Positioned(
                          right: 4,
                          top: 3,
                          child: Container(
                            height: 6.h,
                            width: 6.w,
                            decoration: BoxDecoration(
                                color: Color(0xFF046AE1),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white, width: 0.5)),
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 89.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: slider.length,
                    itemBuilder: (_, index) {
                      return VisibilityDetector(
                          key: Key(index.toString()),
                          child: slider[index],
                          onVisibilityChanged: (VisibilityInfo info) {
                            if (info.visibleFraction == 1) {
                              setState(() {
                                _currentItem = index;
                              });
                            }
                          });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24).r,
                  child: AnimatedSmoothIndicator(
                    duration: Duration(milliseconds: 300),
                    activeIndex: _currentItem,
                    count: 3,
                    effect: SlideEffect(
                        dotWidth: 16.67.w,
                        dotHeight: 2.h,
                        dotColor: Color(0xff46A02A).withOpacity(.5),
                        activeDotColor: Color(0xff46A02A)),
                  ),
                )
              ],
            )));
  }
}

class FirstSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16).r,
      child: Container(
        width: 196.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
              width: 195.w,
              child: Row(
                children: [
                  SutraqLogo(
                    height: 12.h,
                    width: 14.w,
                  ),
                  Text(
                    'SUTRAQ CURRENCY',
                    style: TextStyle(
                        color: Color(0xff0A004A),
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Icon(
                    eyeIcon,
                    size: 11.w,
                  )
                ],
              ),
            ),
            Text(
              'AVAILABLE BALANCE',
              style: TextStyle(
                  color: Color(0xff0A004A).withOpacity(.4),
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}

class SecondSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16).r,
      child: Container(
        width: 196.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
      ),
    );
  }
}

class ThirdSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16).r,
      child: Container(
        width: 196.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
      ),
    );
  }
}
