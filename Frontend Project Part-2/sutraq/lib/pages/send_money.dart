// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

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
                    'Send Money',
                    style: TextStyle(
                        color: const Color(0xff08083d),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: gelion),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ).r,
                child: CustomCircleButton(onPressed: () => {Get.back()}),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
            ).r,
            child: SizedBox(
                height: 48.h,
                // width: 189.w,
                child: Text(
                  'Choose an option to begin the transfer',
                  style: TextStyle(
                      color: const Color(0xff000000).withOpacity(0.5),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: dmSans),
                  textAlign: TextAlign.center,
                )),
          ),
          SizedBox(
            height: 65.h,
          ),
          GestureDetector(
            onTap: () => {Get.toNamed(bank_transfer)},
            child: Container(
              height: 94.h,
              width: 344.w,
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.circular(3).r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff046AE11F).withOpacity(0.12),
                      blurRadius: 3.r,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26).r,
                      child: Icon(
                        accountBalance,
                        color: greenColor,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 227.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bank Transfer',
                            style: TextStyle(
                                color: Color(0xff2f2f2f),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: circularStd),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            'Send money from your sutraq accounts to any bank account in the world',
                            style: TextStyle(
                                color: Color(0xff2f2f2f).withOpacity(.5),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: dmSans),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      navigatNext,
                      color: greenColor,
                      size: 30,
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 17.h,
          ),
          GestureDetector(
            onTap: () => {Get.toNamed(sutraq_transfer)},
            child: Container(
              height: 94.h,
              width: 344.w,
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.all(Radius.circular(3).r),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff046AE11F).withOpacity(0.12),
                      blurRadius: 3.r,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 26).r,
                      child: Icon(
                        supervisorAccount,
                        color: greenColor,
                        size: 28,
                      ),
                    ),
                    SizedBox(
                      width: 227.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sutraq User',
                            style: TextStyle(
                                color: Color(0xff2f2f2f),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: circularStd),
                          ),
                          SizedBox(
                            height: 7.h,
                          ),
                          Text(
                            'Send money from your sutraq accounts to other sutraq users',
                            style: TextStyle(
                                color: Color(0xff2f2f2f).withOpacity(.5),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: dmSans),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      navigatNext,
                      color: greenColor,
                      size: 30,
                    )
                  ]),
            ),
          ),
        ],
      ),
    ));
  }
}
