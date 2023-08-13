import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 45, right: 45).r,
            color: whiteF4F5F7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'All Users',
                  style: TextStyle(
                      color: black000000,
                      fontSize: 20.sp,
                      fontFamily: roboto,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      height: 23.44.toFigmaHeight(20.sp)),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: 275.w,
                      child: TextFormField(
                          cursorColor: black000000,
                          style: TextStyle(
                            color: black000000,
                            fontSize: 14.sp,
                            fontFamily: helvetica,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                          decoration: InputDecoration(
                              filled: true,
                              contentPadding: EdgeInsets.only(left: 15.r),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10))
                                        .r,
                                borderSide: BorderSide(
                                    width: 1.w,
                                    color: black000000.withOpacity(0.5)),
                              ),
                              fillColor: black373333.withOpacity(0.25),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.transparent,
                              )),
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                  color: whiteFFFFFF
                                      .withOpacity(0.6000000238418579),
                                  fontSize: 14.sp,
                                  fontFamily: helvetica,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1,
                                  height: .4),
                              suffixIcon: InkWell(
                                child: Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: black373333,
                                      borderRadius: BorderRadius.all(
                                          const Radius.circular(6).r)),
                                  child: Center(
                                    child: Image.asset(
                                      'images/search_container.png',
                                      height: 22.h,
                                      width: 22.w,
                                    ),
                                  ),
                                ),
                              ))),
                    ),
                    SizedBox(
                      width: 15.h,
                    ),
                    InkWell(
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            color: blue03A9F1,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.r))),
                        child: Center(
                          child: Icon(
                            add,
                            color: whiteFFFFFF,
                            size: 23.w,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 38.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Stack(
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
                              'images/bozneka_profile_pic.png',
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
                              child: Text(
                            '+5',
                            style: TextStyle(
                                color: whiteFFFFFF,
                                fontSize: 15.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 17.58.toFigmaHeight(15.sp)),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bożenka Malina',
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
                          'Uploaded file.',
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
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Container(
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
                    SizedBox(
                      width: 26.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Odeusz Piotrowski',
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
                          'Will do, super, thank you',
                          style: TextStyle(
                              color: black2F2D2D,
                              fontSize: 13.sp,
                              fontFamily: roboto,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 1,
                              height: 15.23.toFigmaHeight(13.sp)),
                        )
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Stack(
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
                              'images/bozneka_profile_pic.png',
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
                              child: Text(
                            '+5',
                            style: TextStyle(
                                color: whiteFFFFFF,
                                fontSize: 15.sp,
                                fontFamily: roboto,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                height: 17.58.toFigmaHeight(15.sp)),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bożenka Malina',
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
                          'Uploaded file.',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
