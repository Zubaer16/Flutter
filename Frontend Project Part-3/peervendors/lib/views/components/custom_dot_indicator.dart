import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/storage/color_storage.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      child: Container(
        margin: const EdgeInsets.only(right: 12).r,
        height: 12.h,
        width: 12.w,
        decoration: BoxDecoration(
            color: isActive ? pinkFF7465 : whiteC4C4C4, shape: BoxShape.circle),
      ),
    );
  }
}
