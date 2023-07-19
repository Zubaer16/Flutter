import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/storage/color_storage.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60.h,
        width: 60.w,
        decoration: const BoxDecoration(
            color: whiteFFFFFF,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ]),
        child: Center(
          child: Image.asset(
            'images/headphones.png',
            height: 32.h,
            width: 32.w,
          ),
        ),
      ),
    );
  }
}
