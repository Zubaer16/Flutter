import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({super.key, required this.drawerOptionText, this.onTap});
  final String drawerOptionText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 210.w,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: .5.w,
          color: whiteC4C4C4,
        ))),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30.h,
                  width: 30.w,
                  decoration:
                      BoxDecoration(color: whiteC4C4C4, shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  drawerOptionText,
                  style: TextStyle(
                      color: black3A2F2F,
                      fontSize: 16.sp,
                      fontFamily: poppins,
                      fontWeight: FontWeight.w300,
                      height: 24.0.toFigmaHeight(16.sp)),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}
