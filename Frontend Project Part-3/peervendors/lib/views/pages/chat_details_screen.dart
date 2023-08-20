import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteF4F5F7,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(121.h),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 77.h,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 88.w,
                height: 44.h,
                child: Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: black72000000,
                              blurRadius: 24.r,
                              offset: const Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ]),
                          child: Image.asset(
                            'images/martina_profile_pic.png',
                            height: 44.h,
                            width: 44.w,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Martina Wolna',
                              style: TextStyle(
                                  color: black000000,
                                  fontSize: 15.sp,
                                  fontFamily: roboto,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  height: 17.58.toFigmaHeight(15.sp)),
                            ),
                            Text(
                              '\$55 apple watch-Gazipur,Dhaka',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: black000000,
                                  fontSize: 12.sp,
                                  fontFamily: roboto,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1,
                                  height: 14.06.toFigmaHeight(12.sp)),
                            )
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 577.h,
              width: MediaQuery.of(context).size.width - 88.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 35.h,
                    ),
                    Text(
                      '1 FEB 12:00',
                      style: TextStyle(
                          color: black000000,
                          fontSize: 12.sp,
                          fontFamily: roboto,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1,
                          height: 14.06.toFigmaHeight(12.sp)),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 280.w),
                        padding: EdgeInsets.only(
                            top: 10.r, bottom: 10.r, left: 15.r, right: 15.r),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                        child: Text(
                            'hi ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 280.w),
                        padding: EdgeInsets.only(
                            top: 10.r, bottom: 10.r, left: 15.r, right: 15.r),
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r))),
                        child: Text(
                            'hi ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(bottom: 20.r), child: TextFormField())
          ],
        ),
      ),
    ));
  }
}
