import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget customTextField(title, {maxLines}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: AppStyles.textStyleB18500,
      ),
      Container(
        decoration: BoxDecoration(
            color: AppColors.brightGray1,
            borderRadius: BorderRadius.all(const Radius.circular(7).r)),
        child: TextField(
          maxLines: maxLines,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(left: 20).r),
        ),
      ),
      SizedBox(
        height: 10.h,
      )
    ],
  );
}
