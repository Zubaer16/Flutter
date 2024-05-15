import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget detailsDescription(String title, String description) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 20).r,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.textStyleB17B,
        ),
        Text(description)
      ],
    ),
  );
}
