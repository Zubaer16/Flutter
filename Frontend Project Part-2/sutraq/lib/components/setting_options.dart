import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Container(
      height: 54.h,
      width: 340.w,
      padding: EdgeInsets.fromLTRB(18, 0, 7, 0).r,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Color(0xffdedede).withOpacity(0.4)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                color: Color(0xff111111),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: onPressed,
            child: Icon(
              navigatNext,
              size: 27.w,
              color: Colors.black.withOpacity(0.53),
            ),
          ),
        ],
      ),
    );
  }
}
