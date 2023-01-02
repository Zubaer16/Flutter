import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class CustomCircleButton extends StatelessWidget {
  final VoidCallback customFunction;
  const CustomCircleButton({Key? key, required this.customFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(8).r,
          backgroundColor: greenColor),
      onPressed: () {
        customFunction();
      },
      child: Icon(
        arrowBackIcon,
        size: 25.w,
      ),
    );
  }
}
