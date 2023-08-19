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
        preferredSize: Size.fromHeight(200.h),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 577.h,
              width: MediaQuery.of(context).size.width - 88.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [...List.generate(100, (index) => Text('hi'))],
                ),
              ),
            ),
            TextFormField()
          ],
        ),
      ),
    ));
  }
}
