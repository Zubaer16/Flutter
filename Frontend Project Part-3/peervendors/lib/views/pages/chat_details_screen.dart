import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/chat_message.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
          child: Scaffold(
        backgroundColor: whiteF4F5F7,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(121.h),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 77.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 88.w,
                  height: 44.h,
                  child: Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: black72000000,
                                blurRadius: 24.r,
                                offset: const Offset(4, 4),
                                spreadRadius: 0,
                              )
                            ]),
                            child: Image.asset(
                              'images/martina_profile_pic.png',
                              height: 44.h,
                              width: 44.w,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Martina Wolna',
                                style: TextStyle(
                                    color: black000000,
                                    fontSize: 15.sp,
                                    fontFamily: roboto,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    height: 17.58.toFigmaHeight(15.sp)),
                              ),
                              Text(
                                '\$55 apple watch-Gazipur,Dhaka',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: black000000,
                                    fontSize: 12.sp,
                                    fontFamily: roboto,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                    height: 14.06.toFigmaHeight(12.sp)),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 577.h,
                  width: MediaQuery.of(context).size.width - 88.h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.r),
                          child: Text(
                            '1 FEB 12:00',
                            style: TextStyle(
                                color: black000000,
                                fontSize: 12.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 14.06.toFigmaHeight(12.sp)),
                          ),
                        ),
                        const ChatMessage(
                            message:
                                'I commented on Figma, I want to add some fancy icons. Do you have any icon set?',
                            messageStatus: 'sender'),
                        const ChatMessage(
                            message:
                                'I am in a process of designing some. When do you need them?',
                            messageStatus: 'receiver'),
                        const ChatMessage(
                            message: 'Next month?', messageStatus: 'sender'),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.r),
                          child: Text(
                            '08:12',
                            style: TextStyle(
                                color: black000000,
                                fontSize: 12.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 14.06.toFigmaHeight(12.sp)),
                          ),
                        ),
                        const ChatMessage(
                            message:
                                'I am almost finish. Please give me your email, I will ZIP them and send you as son as im finish.',
                            messageStatus: 'receiver'),
                        const ChatMessage(
                            message: '?', messageStatus: 'receiver'),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.r),
                          child: Text(
                            '08:12',
                            style: TextStyle(
                                color: black000000,
                                fontSize: 12.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 14.06.toFigmaHeight(12.sp)),
                          ),
                        ),
                        const ChatMessage(
                            message: 'maciej.kowalski@email.com',
                            messageStatus: 'sender'),
                        const ChatMessage(
                            message: '👍', messageStatus: 'receiver'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 275.w,
                          height: 40.h,
                          child: Stack(children: [
                            TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.r)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10.r)),
                                filled: true,
                                fillColor: black9E0E0C0C,
                                hintText: 'Write',
                                hintStyle: TextStyle(
                                    color: whiteFFFFFF
                                        .withOpacity(0.6000000238418579),
                                    fontSize: 14.sp,
                                    fontFamily: helvetica,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    height: .9.h),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                    color: black73E4E,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                  child: Image.asset(
                                    'images/microphone.png',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                              ),
                            )
                          ])),
                      SizedBox(width: 15.w),
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: green00AC83,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                            child: Image.asset(
                          'images/camera.png',
                          height: 20.h,
                          width: 20.w,
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
