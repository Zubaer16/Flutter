import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/drawer_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20, top: 50).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            AppStrings.appBarName,
            style: AppStyles.textStyleB32500,
          ),
          Text(
            'Travel Agency',
            style: AppStyles.textStyleB15300,
          ),
          SizedBox(
            height: 20.h,
          ),
          drawerItem('Support', () {
            Get.toNamed(supportScreen);
          }),
          drawerItem('Privacy', () {
            Get.toNamed(privacyScreen);
          }),
          drawerItem('FAQ', () {
            Get.toNamed(faqScreen);
          }),
          drawerItem('Rate US', () {}),
          drawerItem('How to use', () {
            Get.toNamed(howToUseScreen);
          }),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: () {
              Get.toNamed(settingScreen);
            },
            child: Text(
              'Settings',
              style: AppStyles.textStyleB20600,
            ),
          )
        ]),
      ),
    );
  }
}
