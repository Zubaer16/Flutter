import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class SettingsCategory extends StatelessWidget {
  const SettingsCategory({super.key, required this.categoryText, this.onTap});

  final String categoryText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 48.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: whiteFFFFFF,
                borderRadius: const BorderRadius.all(Radius.circular(6)).r),
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
                  categoryText,
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
          )
        ],
      ),
    );
  }
}
