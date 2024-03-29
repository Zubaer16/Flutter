import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class SettingOptions extends StatelessWidget {
  const SettingOptions({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 54.h,
        width: 340.w,
        padding: const EdgeInsets.fromLTRB(18, 0, 7, 0).r,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: const Color(0xffdedede).withOpacity(0.4)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: const Color(0xff111111),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: circularStd),
            ),
            Icon(
              navigatNext,
              size: 27.w,
              color: Colors.black.withOpacity(0.53),
            ),
          ],
        ),
      ),
    );
  }
}
