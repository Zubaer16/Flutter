// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/font_storage.dart';
import '../storage/color_storage.dart';
import '../storage/icon_storage.dart';

class TransferSummery extends StatelessWidget {
  const TransferSummery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffe5e5e5),
            body: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                      ).r,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Transfer Summary',
                          style: TextStyle(
                              color: const Color(0xff08083d),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.4,
                              fontFamily: gelion),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10).r,
                      child: CustomCircleButton(onPressed: () => {Get.back()}),
                    ),
                  ],
                ),
                SizedBox(
                  height: 64.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ).r,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 486.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).r)),
                    child: Stack(clipBehavior: Clip.none, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40).r,
                        child: Column(
                          children: [
                            Container(
                              height: 65.h,
                              width: 294.w,
                              padding: EdgeInsets.fromLTRB(7.r, 0, 7.r, 0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffdadada)
                                              .withOpacity(.6)))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4).r,
                                        child: Text(
                                          'RECIPIENT',
                                          style: TextStyle(
                                              color: Color(0xff969696),
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: circularStd),
                                        ),
                                      ),
                                      Text(
                                        'Tobi Hassan',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: dmSans),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    accountBoxOutlined,
                                    color: greenColor,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65.h,
                              width: 294.w,
                              padding: EdgeInsets.fromLTRB(7.r, 0, 7.r, 0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffdadada)
                                              .withOpacity(.6)))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4).r,
                                        child: Text(
                                          'RECIPIENTS COUNTRY',
                                          style: TextStyle(
                                              color: Color(0xff969696),
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: circularStd),
                                        ),
                                      ),
                                      Text(
                                        'Nigeria',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: dmSans),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    locationOnOutlined,
                                    color: greenColor,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65.h,
                              width: 294.w,
                              padding: EdgeInsets.fromLTRB(7.r, 0, 7.r, 0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffdadada)
                                              .withOpacity(.6)))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4).r,
                                        child: Text(
                                          'BANK',
                                          style: TextStyle(
                                              color: Color(0xff969696),
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: circularStd),
                                        ),
                                      ),
                                      Text(
                                        'Access Bank',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: dmSans),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    accountBalance,
                                    color: greenColor,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65.h,
                              width: 294.w,
                              padding: EdgeInsets.fromLTRB(7.r, 0, 7.r, 0),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffdadada)
                                              .withOpacity(.6)))),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 4).r,
                                        child: Text(
                                          'ACCOUNT NUMBER',
                                          style: TextStyle(
                                              color: Color(0xff969696),
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: circularStd),
                                        ),
                                      ),
                                      Text(
                                        '0127890013',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: dmSans),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    dialPad,
                                    color: greenColor,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 19.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2).r,
                                      child: Text(
                                        'Amount to send',
                                        style: TextStyle(
                                            color: Color(0xff969696),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: dmSans),
                                      ),
                                    ),
                                    Text(
                                      'N20,000',
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 21.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: dmSans),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 42.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2).r,
                                      child: Text(
                                        'Service Fee',
                                        style: TextStyle(
                                            color: Color(0xff969696),
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: dmSans),
                                      ),
                                    ),
                                    Text(
                                      'N50',
                                      style: TextStyle(
                                          color: Color(0xff000000),
                                          fontSize: 21.sp,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: dmSans),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            CustomButton(
                              onPressed: () =>
                                  {Get.toNamed(enter_transaction_pin)},
                              buttonHeight: 61.h,
                              buttonWidth: 297.w,
                              buttonColor: greenColor,
                              buttonText: 'SEND N20,050',
                              buttonFontSize: 16.sp,
                              buttonTextWeight: FontWeight.w500,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            )));
  }
}
