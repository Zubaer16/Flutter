import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/storage/color_storage.dart';

import '../../storage/font_storage.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoryName, this.onPressed});
  final String categoryName;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: whiteC4C4C4,
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)).r)),
        child: Text(
          categoryName,
          style: TextStyle(
              fontFamily: poppins,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              // height: 36.0.toFigmaHeight(24.sp),
              color: black3A3030),
        ));
  }
}
