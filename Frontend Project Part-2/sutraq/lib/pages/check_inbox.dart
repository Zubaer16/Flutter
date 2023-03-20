import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

class CheckInboxScreen extends StatelessWidget {
  const CheckInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: splashBackgroundColor,
      body: Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: 448.h,
              width: 332.w,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 55.h,
                      ),
                      Image.asset(
                        'images/check_inbox_logo.png',
                        width: 82.w,
                        height: 89.25.h,
                      ),
                      SizedBox(
                        height: 47.75.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 13).r,
                        child: Text(
                          'Check your Inbox!',
                          style: TextStyle(
                              fontSize: 27.sp,
                              fontWeight: FontWeight.w600,
                              color: welcomeBalckColor,
                              fontFamily: gelion),
                        ),
                      ),
                      SizedBox(
                        width: 258.w,
                        height: 60.h,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 1.05, left: 1.05).r,
                          child: Text(
                            'An email has been sent to you. Click the link to reset your password.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: lightBalckColor,
                                fontFamily: circularStd),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      CustomButton(
                        onPressed: () => {},
                        buttonText: 'CHECK MAIL',
                        buttonColor: greenColor,
                        buttonFontSize: 16.sp,
                        buttonHeight: 61.h,
                        buttonWidth: 252.w,
                        buttonTextWeight: FontWeight.w500,
                      )
                    ],
                  )))),
    ));
  }
}
