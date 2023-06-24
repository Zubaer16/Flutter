import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_circle_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: whiteF4F5F7,
          body: Center(
            child: SizedBox(
              width: 356.w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 44.h,
                    ),
                    const CustomCircleButton(),
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      'Create an account\nNow.',
                      style: TextStyle(
                          color: black3A3030,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w600,
                          fontSize: 36.sp,
                          height: 54.0.toFigmaHeight(36.sp)),
                    ),
                  ]),
            ),
          )),
    );
  }
}
