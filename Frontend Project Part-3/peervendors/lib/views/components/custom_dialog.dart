import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';

Future<dynamic> customDialog(
    BuildContext context, String mycla, final Function()? onTap) async {
  return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: black404040.withOpacity(0.3),
      transitionDuration: const Duration(microseconds: 200),
      pageBuilder: (BuildContext context, Animation first, Animation second) {
        return Center(
            child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 328.h,
              width: 368.w,
              padding: const EdgeInsets.all(40).r,
              decoration: BoxDecoration(
                  color: whiteFFFFFF,
                  borderRadius: const BorderRadius.all(Radius.circular(10)).r),
              child: GestureDetector(
                onTap: onTap,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                        style: TextStyle(
                            color: black3A2F2F,
                            fontSize: 24.sp,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w500,
                            height: 36.0.toFigmaHeight(24.sp)),
                        child: const Text('Help & Support')),
                    SizedBox(
                      height: 40.h,
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/playButton.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          DefaultTextStyle(
                              style: TextStyle(
                                  color: pinkFF7465,
                                  fontSize: 18.sp,
                                  fontFamily: poppins,
                                  fontWeight: FontWeight.w500,
                                  height: 27.0.toFigmaHeight(18.sp)),
                              child: const Text('Fix My Location Problem')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/playButton.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          DefaultTextStyle(
                              style: TextStyle(
                                  color: pinkFF7465,
                                  fontSize: 18.sp,
                                  fontFamily: poppins,
                                  fontWeight: FontWeight.w500,
                                  height: 27.0.toFigmaHeight(18.sp)),
                              child: const Text('How to use this app')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    GestureDetector(
                      onTap: null,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/userVoice.png',
                            height: 25.h,
                            width: 25.w,
                          ),
                          SizedBox(
                            width: 9.w,
                          ),
                          DefaultTextStyle(
                              style: TextStyle(
                                  color: pinkFF7465,
                                  fontSize: 18.sp,
                                  fontFamily: poppins,
                                  fontWeight: FontWeight.w500,
                                  height: 27.0.toFigmaHeight(18.sp)),
                              child: const Text('Contact us for Location')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -20.h,
              left: 345.w,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                      child: Icon(
                    close,
                    size: 20.w,
                    color: black000000,
                  )),
                ),
              ),
            )
          ],
        ));
      });
}
