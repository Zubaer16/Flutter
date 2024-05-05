import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget searchInput(void Function()? onTap) {
  return SizedBox(
    width: 323.w,
    height: 45.h,
    child: TextFormField(
      onTap: onTap,
      readOnly: true,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          AppIcons.search,
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGray_1)),
        hintText: 'Search for your next tour',
        hintStyle: AppStyles.textStyleB12400,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7.0).r,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGray_1),
        ),
      ),
    ),
  );
}
