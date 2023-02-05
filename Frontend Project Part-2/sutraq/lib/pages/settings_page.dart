// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/setting_options.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff08083d),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    'Account Settings',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 43.h,
                  ),
                  ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 2).r,
                      child: Container(
                        height: 51.h,
                        width: 51.w,
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
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    title: Text('Ogar Precious',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white)),
                    subtitle: Text(
                      'ogarpre@gmail.com',
                      style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffc1c1c1).withOpacity(.7)),
                    ),
                    trailing: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        navigatNext,
                        size: 27.w,
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))
                            .r),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 36.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 35).r,
                            child: Text(
                              'general'.toUpperCase(),
                              style: TextStyle(
                                  color: Color(0xff7E7E7E),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        SettingOptions(
                            text: 'Bank Accounts', onPressed: () => {}),
                        SettingOptions(text: 'My Cards', onPressed: () => {}),
                        SettingOptions(
                            text: 'Change Transaction Pin',
                            onPressed: () => {}),
                        SettingOptions(text: 'Security', onPressed: () => {}),
                        SizedBox(
                          height: 27.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 35).r,
                            child: Text(
                              'Preferences'.toUpperCase(),
                              style: TextStyle(
                                  color: Color(0xff7E7E7E),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        SettingOptions(
                            text: 'Invite Your Friends', onPressed: () => {}),
                        SettingOptions(
                            text: 'Report a Bug', onPressed: () => {}),
                        SizedBox(
                          height: 27.h,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 35).r,
                            child: Text(
                              'Notifications'.toUpperCase(),
                              style: TextStyle(
                                  color: Color(0xff7E7E7E),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        Container(
                          height: 54.h,
                          width: 340.w,
                          padding: EdgeInsets.fromLTRB(18, 0, 7, 0).r,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color:
                                          Color(0xffdedede).withOpacity(0.4)))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Get real-time updates',
                                style: TextStyle(
                                    color: Color(0xff111111),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Switch(
                                value: true,
                                onChanged: (value) => {},
                                activeColor: greenColor,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
// 