import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF1F3F4),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 29, bottom: 25).r,
            child: SizedBox(
              height: 40.h,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          color: Color(0xff08083D),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 21, top: 3).r,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(dashboard_page);
                      },
                      child: Icon(
                        cancelIcon,
                        color: greenColor,
                        size: 33.r,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10).r,
                    topRight: Radius.circular(10).r)),
            child: Column(children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                    left: 16, right: 14, top: 31)
                                .r,
                            child: Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: greenColor,
                                  borderRadius: BorderRadius.circular(8).r),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 26,
                            ).r,
                            child: Text(
                              'Got a minute to help us out?',
                              style: TextStyle(
                                  color: Color(0xff4D4949),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 26, left: 95).r,
                            child: Text(
                              '9:40am',
                              style: TextStyle(
                                  color: greenColor.withOpacity(.6),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                                left: 38, right: 17, top: 26, bottom: 23)
                            .r,
                        child: SizedBox(
                          // width: 308.4.w,
                          child: Text(
                            "We’d like to know how you heard about Sutraq.It’s so we can better share our mission with the world. Tap to take the survey.",
                            style: TextStyle(
                                color: Color(0xff4D4949),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 340.w,
                          height: .5.h,
                          color: Color(0xffDEDEDE),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                    left: 16, right: 14, top: 31)
                                .r,
                            child: Container(
                              height: 8.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8).r),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 26,
                            ).r,
                            child: Text(
                              'Got a minute to help us out?',
                              style: TextStyle(
                                  color: Color(0xff4D4949).withOpacity(.5),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 26, left: 80).r,
                            child: Text(
                              'Yesterday',
                              style: TextStyle(
                                  color: greenColor.withOpacity(.5),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                                left: 38, right: 17, top: 26, bottom: 23)
                            .r,
                        child: SizedBox(
                          // width: 308.4.w,
                          child: Text(
                            "We’d like to know how you heard about Sutraq.It’s so we can better share our mission with the world. Tap to take the survey.",
                            style: TextStyle(
                                color: Color(0xff4D4949).withOpacity(.5),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 340.w,
                          height: .5.h,
                          color: Color(0xffDEDEDE).withOpacity(.5),
                        ),
                      )
                    ],
                  )),
            ]),
          ))
        ],
      ),
    ));
  }
}
