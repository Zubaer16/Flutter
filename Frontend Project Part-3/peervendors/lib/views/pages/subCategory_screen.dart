import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteF4F5F7,
        body: Column(
          children: [
            Container(
              height: 60.h,
              width: MediaQuery.of(context).size.width,
              color: whiteFFFFFF,
              child: Center(
                child: Text(
                  'Sell',
                  style: TextStyle(
                      color: black3A2F2F,
                      fontSize: 22.sp,
                      fontFamily: poppins,
                      fontWeight: FontWeight.w500,
                      height: 33.0.toFigmaHeight(22.sp)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 32, right: 32).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 17.h,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Text(
                    'Choose a Sub Category',
                    style: TextStyle(
                        color: black3A2F2F,
                        fontSize: 20.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w400,
                        height: 30.0.toFigmaHeight(20.sp)),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(productDetailsScreen);
                    },
                    child: Container(
                      height: 48.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius: BorderRadius.all(Radius.circular(6)).r),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24.w,
                          ),
                          Container(
                            height: 28.h,
                            width: 28.w,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: whiteC4C4C4),
                          ),
                          SizedBox(
                            width: 24.w,
                          ),
                          Text(
                            'Cars',
                            style: TextStyle(
                                color: black3A2F2F,
                                fontSize: 16.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w300,
                                height: 24.0.toFigmaHeight(16.sp)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 48.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: whiteFFFFFF,
                        borderRadius: BorderRadius.all(Radius.circular(6)).r),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24.w,
                        ),
                        Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: whiteC4C4C4),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Text(
                          'Bikes',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 16.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 24.0.toFigmaHeight(16.sp)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    height: 48.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: whiteFFFFFF,
                        borderRadius: BorderRadius.all(Radius.circular(6)).r),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24.w,
                        ),
                        Container(
                          height: 28.h,
                          width: 28.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: whiteC4C4C4),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Text(
                          'Bicycles',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 16.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 24.0.toFigmaHeight(16.sp)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
