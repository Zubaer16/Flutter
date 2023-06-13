import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class LanguageRadio extends StatelessWidget {
  const LanguageRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  final String value;
  final String groupValue;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        if (value != groupValue) {onChanged(value)}
      },
      child: Row(children: [
        Container(
          height: 15.h,
          width: 15.w,
          decoration: BoxDecoration(
              color: value == groupValue ? green0A885B : whiteFFFFFF,
              shape: BoxShape.circle),
        ),
        SizedBox(
          width: 14.w,
        ),
        Text(
          value,
          style: TextStyle(
              color: whiteFFFFFF,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              fontFamily: poppins,
              height: 22.5.toFigmaHeight(15.sp)),
        ),
      ]),
    );
  }
}
