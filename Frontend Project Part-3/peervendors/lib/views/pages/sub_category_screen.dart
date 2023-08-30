import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/settings_category.dart';

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
                  SettingsCategory(
                    categoryText: 'Cars',
                    onTap: () {
                      Get.toNamed(productDetailsScreen);
                    },
                  ),
                  const SettingsCategory(
                    categoryText: 'Bikes',
                  ),
                  const SettingsCategory(
                    categoryText: 'Bicycles',
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
