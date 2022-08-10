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

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

final slider = [const ThirdSlider(), const SecondSlider(), const FirstSlider()];
int _currentItem = 0;

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: splashBackgroundColor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 19).r,
                        child: Text(
                          'My Wallets',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700),
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
                              dotColor: Colors.white,
                              activeDotColor: Color(0xff046AE1)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 11, left: 13)
                                .r,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10).r),
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
                                                height: 43.h,
                                                width: 43.w,
                                                decoration: BoxDecoration(
                                                    color: greenColor1,
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    accountBalance,
                                                    color: Color(0xffDADADA),
                                                    size: 14.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Fund Wallet',
                                              style: TextStyle(
                                                  color: Color(0xff333333),
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
                                                height: 43.h,
                                                width: 43.w,
                                                decoration: BoxDecoration(
                                                    color: greenColor1,
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    trendingIcon,
                                                    color: Color(0xffDADADA),
                                                    size: 14.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Send Money',
                                              style: TextStyle(
                                                  color: Color(0xff333333),
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
                                                height: 43.h,
                                                width: 43.w,
                                                decoration: BoxDecoration(
                                                    color: greenColor1,
                                                    shape: BoxShape.circle),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    inputIcon,
                                                    color: Color(0xffDADADA),
                                                    size: 14.w,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Withdraw',
                                              style: TextStyle(
                                                  color: Color(0xff333333),
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
                                    borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(10))),
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
                                                  width: 98.w,
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
                                                  width: 98.w,
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
                                                  width: 98.w,
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
                                                  width: 98.w,
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
                                              left: 35, right: 37, bottom: 15)
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
                                                  width: 98.w,
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
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12).r,
                                      child: TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'View All',
                                            style: TextStyle(
                                                color: greenColor1,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w700),
                                          )),
                                    ),
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
        padding: const EdgeInsets.only(left: 16).r,
        child: Container(
          width: 196.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Color(0xff08083D),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 18).r,
                child: SizedBox(
                  width: 196.w,
                  child: Row(children: [
                    Container(
                      color: Colors.white,
                      height: 7.h,
                      width: 11.w,
                      child: Image.asset(
                        'images/nigeria.png',
                        height: 7.h,
                        width: 13.w,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4).r,
                      child: const Text('NGN',
                          style: TextStyle(
                              color: Color(0xffF1F3F4),
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
                        color: const Color(0xffF1F3F4).withOpacity(.4),
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
                      Text(
                        'N',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white,
                            decorationThickness: 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 57).r,
                        child: Text(
                          '190,000',
                          style: TextStyle(
                              color: Colors.white,
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
        ));
  }
}
