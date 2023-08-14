import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class ChatFriends extends StatelessWidget {
  const ChatFriends(
      {super.key,
      required this.unseenCount,
      required this.userName,
      required this.lastMessage,
      required this.profileImage,
      this.onTap});

  final int unseenCount;
  final String userName;
  final String lastMessage;
  final String profileImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Row(children: [
              Visibility(
                visible: unseenCount == 0 ? false : true,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 20.w,
                      top: 11.h,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: black72000000,
                              blurRadius: 24.r,
                              offset: const Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Image.asset(
                          profileImage,
                          height: 34.h,
                          width: 34.w,
                        ),
                      ),
                    ),
                    Container(
                      height: 34.h,
                      width: 34.w,
                      decoration: BoxDecoration(
                        color: black414756,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: black72000000,
                            blurRadius: 34.r,
                            offset: const Offset(20, 24),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                          child: Text.rich(TextSpan(
                              text: '+',
                              style: TextStyle(
                                  color: whiteFFFFFF,
                                  fontSize: 15.sp,
                                  fontFamily: roboto,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  height: 17.58.toFigmaHeight(15.sp)),
                              children: [
                            TextSpan(
                              text: unseenCount.toString(),
                              style: TextStyle(
                                  color: whiteFFFFFF,
                                  fontSize: 15.sp,
                                  fontFamily: roboto,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  height: 17.58.toFigmaHeight(15.sp)),
                            )
                          ]))),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: unseenCount == 0 ? true : false,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: black72000000,
                        blurRadius: 24.r,
                        offset: const Offset(4, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Image.asset(
                    'images/odeusz_profile_pic.png',
                    height: 44.h,
                    width: 44.w,
                  ),
                ),
              ),
              SizedBox(
                width: unseenCount == 0 ? 26.w : 36.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                        color: black000000,
                        fontSize: 15.sp,
                        fontFamily: roboto,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1,
                        height: 17.58.toFigmaHeight(15.sp)),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    lastMessage,
                    style: TextStyle(
                        color: black2F2D2D,
                        fontSize: 13.sp,
                        fontFamily: roboto,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 1,
                        height: 15.23.toFigmaHeight(13.sp)),
                  )
                ],
              )
            ]),
          ),
          SizedBox(
            height: 36.h,
          )
        ],
      ),
    );
  }
}
