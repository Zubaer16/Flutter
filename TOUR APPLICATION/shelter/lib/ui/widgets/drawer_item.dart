import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget drawerItem(String itemName, onClick) {
  return InkWell(
    onTap: onClick,
    child: Padding(
      padding: EdgeInsets.only(bottom: 6.r),
      child: Text(
        itemName,
        style: AppStyles.textStyleB20400,
      ),
    ),
  );
}
