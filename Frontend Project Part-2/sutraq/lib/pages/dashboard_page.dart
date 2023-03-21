import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sutraq/components/dashboard_dialog.dart';
import 'package:sutraq/components/recent_transactions.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/provider/dashboard_page_indicator_provider.dart';
import 'package:sutraq/provider/page_change_provider.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:visibility_detector/visibility_detector.dart';

final slider = [const FirstSlider(), const SecondSlider(), const ThirdSlider()];

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardPageIndicator =
        Provider.of<DashboardPageIndicatorProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff051F0E),
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
                                      fontWeight: FontWeight.w600,
                                      fontFamily: sfProText),
                                ),
                              ),
                            ),
                          ),
                          title: Text('Hello, Precious!',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: gelion)),
                          subtitle: Text(
                            'Su/Pre123',
                            style: TextStyle(
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white.withOpacity(0.5),
                                fontFamily: circularStd),
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
                                    // setState(() {
                                    //   _currentItem = index;
                                    // });
                                    dashboardPageIndicator.changeIndex(index);
                                  }
                                });
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24).r,
                        child: Consumer<DashboardPageIndicatorProvider>(
                          builder: (context, value, child) =>
                              AnimatedSmoothIndicator(
                            duration: const Duration(milliseconds: 300),
                            activeIndex: value.pageviewIndex,
                            count: 3,
                            effect: SlideEffect(
                                dotWidth: 16.67.w,
                                dotHeight: 2.h,
                                dotColor: greenColor1.withOpacity(.5),
                                activeDotColor: greenColor1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11).r,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: greenColor1,
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(20).r,
                                  topRight: const Radius.circular(20).r)),
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
                                            GestureDetector(
                                              onTap: () {
                                                dashboardDialog(
                                                    context,
                                                    'FUND WALLET',
                                                    () => {
                                                          Get.back(),
                                                          Get.toNamed(
                                                              fund_wallet_page)
                                                        });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                        bottom: 11)
                                                    .r,
                                                child: Container(
                                                  height: 56.h,
                                                  width: 56.w,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xff051F0E),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      accountBalanceWallet,
                                                      color: const Color(
                                                          0xffDADADA),
                                                      size: 24.w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Fund Wallet',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: circularStd),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                dashboardDialog(
                                                    context,
                                                    'SEND MONEY',
                                                    () => {
                                                          Get.back(),
                                                          Get.toNamed(
                                                              send_money)
                                                        });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                        bottom: 11)
                                                    .r,
                                                child: Container(
                                                  height: 56.h,
                                                  width: 56.w,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xff051F0E),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      inputIcon,
                                                      color: const Color(
                                                          0xffDADADA),
                                                      size: 24.w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Send Money',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: circularStd),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                dashboardDialog(
                                                    context,
                                                    'WITHDRAW FUNDS',
                                                    () => {
                                                          Get.back(),
                                                          Get.toNamed(
                                                              withdraw_fund)
                                                        });
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                        bottom: 11)
                                                    .r,
                                                child: Container(
                                                  height: 56.h,
                                                  width: 56.w,
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0xff051F0E),
                                                          shape:
                                                              BoxShape.circle),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                      driveFileIcon,
                                                      color: const Color(
                                                          0xffDADADA),
                                                      size: 24.w,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              'Withdraw',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: circularStd),
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
                                        topLeft: const Radius.circular(20).r,
                                        topRight: const Radius.circular(20).r)),
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
                                                color: const Color(0xff333333),
                                                fontSize: 17.sp,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: gelion),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const RecentTransactions(
                                      islineThrough: false,
                                      isReceived: true,
                                      isDollar: true,
                                    ),
                                    const RecentTransactions(
                                      islineThrough: true,
                                      isReceived: false,
                                      isDollar: false,
                                      amount: '10,000',
                                    ),
                                    const RecentTransactions(
                                      islineThrough: true,
                                      isReceived: true,
                                      isDollar: false,
                                      amount: '4,500,000',
                                    ),
                                    const RecentTransactions(
                                      islineThrough: true,
                                      isReceived: false,
                                      isDollar: false,
                                      amount: '10,000',
                                    ),
                                    const RecentTransactions(
                                      islineThrough: true,
                                      isReceived: true,
                                      isDollar: false,
                                      amount: '2,000',
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Get.toNamed(view_all_transactions);
                                        },
                                        style: TextButton.styleFrom(
                                            // padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
                                            minimumSize: Size.zero),
                                        child: Text(
                                          'View All',
                                          style: TextStyle(
                                              color: greenColor1,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: circularStd),
                                        )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    InkWell(
                                      onTap: () =>
                                          {Get.toNamed(refer_a_freind)},
                                      child: Image.asset(
                                        'images/refer.png',
                                        width: 360.w,
                                      ),
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
    final pageChangeProvider =
        Provider.of<PageChangeProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.only(left: 16).r,
      child: GestureDetector(
        onTap: () {
          pageChangeProvider.changePage(1);
          Get.toNamed(dashboard_screen);
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
                              fontWeight: FontWeight.w700,
                              fontFamily: dmSans),
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
                        fontWeight: FontWeight.w700,
                        fontFamily: circularStd),
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
                              fontWeight: FontWeight.w700,
                              fontFamily: gelion),
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
                              fontWeight: FontWeight.w700,
                              fontFamily: dmSans)),
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
                        fontWeight: FontWeight.w700,
                        fontFamily: circularStd),
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
                        fontWeight: FontWeight.w700,
                        fontFamily: gelion),
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
                              fontWeight: FontWeight.w700,
                              fontFamily: dmSans)),
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
                        fontWeight: FontWeight.w700,
                        fontFamily: circularStd),
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
                        fontWeight: FontWeight.w700,
                        fontFamily: gelion),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
