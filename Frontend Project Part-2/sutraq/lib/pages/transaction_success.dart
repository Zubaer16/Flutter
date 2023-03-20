import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class TransactionSuccess extends StatelessWidget {
  const TransactionSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xff090232),
            body: Center(
              child: Container(
                height: 632.h,
                width: 325.w,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(15).r)),
                child: Column(children: [
                  SizedBox(
                    height: 35.h,
                  ),
                  Container(
                    height: 86.h,
                    width: 86.w,
                    decoration: BoxDecoration(
                        color: Color(0xff47D187).withOpacity(.15),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        done,
                        size: 60.h,
                        color: Color(0xff47D187),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Success',
                    style: TextStyle(
                        color: Color(0xff002251),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: gelion),
                  ),
                  SizedBox(
                    height: 9.h,
                  ),
                  Text(
                    'You’ve successfully transferred money.',
                    style: TextStyle(
                        color: Color(0xff7A869A),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: circularStd),
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From:',
                              style: TextStyle(
                                  color: Color(0xff002251),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Credit Card',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Precious Ogar',
                              style: TextStyle(
                                  color: Color(0xff002251),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'VISA *8064',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 250.w,
                    color: Color(0xffF5F7F9),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'To:',
                              style: TextStyle(
                                  color: Color(0xff002251),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Bank Account',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Bank Name',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Idris Lawal',
                              style: TextStyle(
                                  color: Color(0xff002251),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '0273829134',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Stanbic IBTC',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 250.w,
                    color: Color(0xffF5F7F9),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date:',
                          style: TextStyle(
                              color: Color(0xff002251),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '26 Apr, 2019',
                              style: TextStyle(
                                  color: Color(0xff002251),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: circularStd),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '12:48 PM',
                              style: TextStyle(
                                  color: Color(0xff7A869A),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: circularStd),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Container(
                    height: 1.h,
                    width: 250.w,
                    color: Color(0xffF5F7F9),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Color(0xff002251),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        ),
                        Text(
                          '\$4,800',
                          style: TextStyle(
                              color: Color(0xff002251),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          receiptLong,
                          color: Color(0xff7A869A),
                          size: 17.h,
                        ),
                        SizedBox(
                          width: 9.5.w,
                        ),
                        TextButton(
                            onPressed: () => {},
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: Size.zero),
                            child: Text(
                              'Download Receipt',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff7A869A),
                                  fontFamily: circularStd),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  CustomButton(
                    onPressed: () => {Get.toNamed(dashboard_screen)},
                    buttonHeight: 53.h,
                    buttonWidth: 250.w,
                    buttonColor: greenColor,
                    buttonText: 'DONE',
                    buttonFontSize: 16.sp,
                    buttonTextWeight: FontWeight.w500,
                  )
                ]),
              ),
            )));
  }
}
