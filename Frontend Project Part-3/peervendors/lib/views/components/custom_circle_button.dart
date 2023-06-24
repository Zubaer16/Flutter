import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: null,
      child: Container(
        height: 45.h,
        width: 45.w,
        decoration: BoxDecoration(
            color: whiteC4C4C4.withOpacity(.5), shape: BoxShape.circle),
        child: const Icon(
          backIcon,
          color: whiteFFFFFF,
        ),
      ),
    );
  }
}
