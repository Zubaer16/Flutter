import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget searchInput() {
  return SizedBox(
    width: 323.w,
    height: 45.h,
    child: TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(
          AppIcons.search,
          // color: Colors.black,
        ),
        hintText: 'Search for your next tour',
        hintStyle: AppStyles.textStyleB12400,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0).r,
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    ),
  );
}
