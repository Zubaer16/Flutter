// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:visibility_detector/visibility_detector.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

final slider = [const FirstSlider(), const SecondSlider(), const ThirdSlider()];
int _currentItem = 0;

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff051F0E),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 27).r,
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
                          trailing: GestureDetector(
                            onTap: () {
                              Get.toNamed(notification_screen);
                            },
                            child: Stack(children: [
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
                                      color: const Color(0xFF046AE1),
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
                          duration: const Duration(milliseconds: 300),
                          activeIndex: _currentItem,
                          count: 3,
                          effect: SlideEffect(
                              dotWidth: 16.67.w,
                              dotHeight: 2.h,
                              dotColor: greenColor1.withOpacity(.5),
                              activeDotColor: greenColor1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11).r,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: greenColor1,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20).r,
                                  topRight: Radius.circular(20).r)),
                          child: Column(
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                            top: 18, bottom: 19)
                                        .r,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 11)
                                                  .r,
                                              child: Container(
                                                height: 56.h,
                                                width: 56.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff051F0E),
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    accountBalance,
                                                    color: Color(0xffDADADA),
                                                    size: 24.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Fund Wallet',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 11)
                                                  .r,
                                              child: Container(
                                                height: 56.h,
                                                width: 56.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff051F0E),
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    inputIcon,
                                                    color: Color(0xffDADADA),
                                                    size: 24.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Send Money',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                      bottom: 11)
                                                  .r,
                                              child: Container(
                                                height: 56.h,
                                                width: 56.w,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff051F0E),
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    driveFileIcon,
                                                    color: Color(0xffDADADA),
                                                    size: 24.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Withdraw',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20).r,
                                        topRight: Radius.circular(20).r)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16).r,
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                                  left: 35, top: 22)
                                              .r,
                                          child: Text(
                                            'Recent Transactions',
                                            style: TextStyle(
                                                color: Color(0xff333333),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 35, right: 37)
                                          .r,
                                      child: SizedBox(
                                        height: 56.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                            color: Color(0xffDEDEDE)
                                                .withOpacity(.4),
                                          ))),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                                width: 24.w,
                                                child: Stack(children: [
                                                  Image.asset(
                                                    'images/incomingBackground.png',
                                                    height: 24.h,
                                                    width: 24.w,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'images/incoming.png',
                                                      height: 8.75.h,
                                                      width: 8.75.w,
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 13, top: 11)
                                                    .r,
                                                child: SizedBox(
                                                  width: 121.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                        .only(
                                                                    bottom: 4)
                                                                .r,
                                                        child: Text(
                                                          'Access Bank',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      Text(
                                                        '28, Jan 2020',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff929292)
                                                                .withOpacity(
                                                                    .7),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 145.w,
                                                child: Text(
                                                  '\$2400',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      color: Color(0xff0A004A),
                                                      fontSize: 16.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 35, right: 37)
                                          .r,
                                      child: SizedBox(
                                        height: 56.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                            color: Color(0xffDEDEDE)
                                                .withOpacity(.4),
                                          ))),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                                width: 24.w,
                                                child: Stack(children: [
                                                  Image.asset(
                                                    'images/outgoingBackground.png',
                                                    height: 24.h,
                                                    width: 24.w,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'images/outgoing.png',
                                                      height: 8.75.h,
                                                      width: 8.75.w,
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 13, top: 11)
                                                    .r,
                                                child: SizedBox(
                                                  width: 121.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                        .only(
                                                                    bottom: 4)
                                                                .r,
                                                        child: Text(
                                                          'Alpha Loans',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      Text(
                                                        '28, Jan 2020',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff929292)
                                                                .withOpacity(
                                                                    .7),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 145.w,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'N',
                                                      style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationColor:
                                                              Color(0xff0A004A),
                                                          decorationThickness:
                                                              2,
                                                          color:
                                                              Color(0xff0A004A),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                    Text(
                                                      '10000',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0A004A),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 35, right: 37)
                                          .r,
                                      child: SizedBox(
                                        height: 56.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                            color: Color(0xffDEDEDE)
                                                .withOpacity(.4),
                                          ))),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                                width: 24.w,
                                                child: Stack(children: [
                                                  Image.asset(
                                                    'images/incomingBackground.png',
                                                    height: 24.h,
                                                    width: 24.w,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'images/incoming.png',
                                                      height: 8.75.h,
                                                      width: 8.75.w,
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 13, top: 11)
                                                    .r,
                                                child: SizedBox(
                                                  width: 121.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                        .only(
                                                                    bottom: 4)
                                                                .r,
                                                        child: Text(
                                                          'Access Bank',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      Text(
                                                        '28, Jan 2020',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff929292)
                                                                .withOpacity(
                                                                    .7),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 145.w,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text('N4',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff0A004A),
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                            decorationColor:
                                                                Color(
                                                                    0xff0a004a),
                                                            decorationThickness:
                                                                2)),
                                                    Text(
                                                      ',500,000',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0A004A),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 35, right: 37)
                                          .r,
                                      child: SizedBox(
                                        height: 56.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                            color: Color(0xffDEDEDE)
                                                .withOpacity(.4),
                                          ))),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                                width: 24.w,
                                                child: Stack(children: [
                                                  Image.asset(
                                                    'images/outgoingBackground.png',
                                                    height: 24.h,
                                                    width: 24.w,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'images/outgoing.png',
                                                      height: 8.75.h,
                                                      width: 8.75.w,
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 13, top: 11)
                                                    .r,
                                                child: SizedBox(
                                                  width: 121.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                        .only(
                                                                    bottom: 4)
                                                                .r,
                                                        child: Text(
                                                          'Alpha Loans',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      Text(
                                                        '28, Jan 2020',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff929292)
                                                                .withOpacity(
                                                                    .7),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 145.w,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text('N',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 16.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              decorationColor:
                                                                  Color(
                                                                      0xff0A004A),
                                                              decorationThickness:
                                                                  2,
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough)),
                                                      Text(
                                                        '10000',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff0A004A),
                                                            fontSize: 16.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              left: 35, right: 37)
                                          .r,
                                      child: SizedBox(
                                        //height: 50.h,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border(
                                                  top: BorderSide(
                                            color: Color(0xffDEDEDE)
                                                .withOpacity(.4),
                                          ))),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 24.h,
                                                width: 24.w,
                                                child: Stack(children: [
                                                  Image.asset(
                                                    'images/incomingBackground.png',
                                                    height: 24.h,
                                                    width: 24.w,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset(
                                                      'images/incoming.png',
                                                      height: 8.75.h,
                                                      width: 8.75.w,
                                                    ),
                                                  )
                                                ]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                        left: 13, top: 11)
                                                    .r,
                                                child: SizedBox(
                                                  width: 121.w,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                        .only(
                                                                    bottom: 4)
                                                                .r,
                                                        child: Text(
                                                          'Access Bank',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xff0A004A),
                                                              fontSize: 14.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        ),
                                                      ),
                                                      Text(
                                                        '28, Jan 2020',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color: Color(
                                                                    0xff929292)
                                                                .withOpacity(
                                                                    .7),
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 145.w,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      'N',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0A004A),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                          decorationColor:
                                                              Color(0xff0A004A),
                                                          decorationThickness:
                                                              2),
                                                    ),
                                                    Text(
                                                      '2000',
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff0A004A),
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'View All',
                                          style: TextStyle(
                                              color: greenColor1,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700),
                                        )),
                                    Image.asset(
                                      'images/refer.png',
                                      width: 360.w,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}

class FirstSlider extends StatelessWidget {
  const FirstSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16).r,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(wallet_page);
        },
        child: Container(
          width: 196.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 13).r,
                child: SizedBox(
                  width: 196.w,
                  child: Row(
                    children: [
                      SutraqLogo(
                        height: 12.h,
                        width: 14.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 45.5).r,
                        child: Text(
                          'SUTRAQ CURRENCY',
                          style: TextStyle(
                              color: const Color(0xff0A004A),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Icon(
                        eyeIcon,
                        size: 11.w,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 17).r,
                child: SizedBox(
                  width: 196.w,
                  child: Text(
                    'AVAILABLE BALANCE',
                    style: TextStyle(
                        color: const Color(0xff0A004A).withOpacity(.4),
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 4).r,
                child: SizedBox(
                  width: 196.w,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 57).r,
                        child: Text(
                          'Q190,000',
                          style: TextStyle(
                              color: greenColor1,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Icon(
                        arrowForward,
                        color: greenColor1,
                        size: 10.w,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondSlider extends StatelessWidget {
  const SecondSlider({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 18).r,
                child: SizedBox(
                  width: 196.w,
                  child: Row(children: [
                    Image.asset(
                      'images/usa.png',
                      height: 7.h,
                      width: 13.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4).r,
                      child: const Text('USD',
                          style: TextStyle(
                              color: Color(0xff0A004A),
                              fontSize: 10,
                              fontWeight: FontWeight.w700)),
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 10).r,
                child: SizedBox(
                  width: 196.w,
                  child: Text(
                    'AVAILABLE BALANCE',
                    style: TextStyle(
                        color: const Color(0xff0A004A).withOpacity(.4),
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 4).r,
                child: SizedBox(
                  width: 196.w,
                  child: Text(
                    '\$42,000',
                    style: TextStyle(
                        color: greenColor1,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class ThirdSlider extends StatelessWidget {
  const ThirdSlider({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 18).r,
                child: SizedBox(
                  width: 196.w,
                  child: Row(children: [
                    Image.asset(
                      'images/usa.png',
                      height: 7.h,
                      width: 13.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4).r,
                      child: const Text('USD',
                          style: TextStyle(
                              color: Color(0xff0A004A),
                              fontSize: 10,
                              fontWeight: FontWeight.w700)),
                    )
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 10).r,
                child: SizedBox(
                  width: 196.w,
                  child: Text(
                    'AVAILABLE BALANCE',
                    style: TextStyle(
                        color: const Color(0xff0A004A).withOpacity(.4),
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17, top: 4).r,
                child: SizedBox(
                  width: 196.w,
                  child: Text(
                    '\$42,000',
                    style: TextStyle(
                        color: greenColor1,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
