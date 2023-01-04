// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/components/dashboard_dialog.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xfff1f3f4),
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
                          'Fund Wallet',
                          style: TextStyle(
                            color: Color(0xff08083d),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20).r,
                      child: CustomCircleButton(
                          customFunction: () => {Get.back()}),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ).r,
                  child: SizedBox(
                      height: 48.h,
                      width: 189.w,
                      child: Text(
                        'Ensure to fill in the neccessary details of the recipient in order to continue',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      )),
                ),
                SizedBox(
                  height: 75.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ).r,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 509.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10).r,
                            topRight: Radius.circular(10).r)),
                    child: Stack(children: [
                      Column(
                        children: [Text('hi')],
                      ),
                      ThirdSlider(
                        height: 89.h,
                      ),
                    ]),
                  ),
                ),
              ],
            )));
  }
}
