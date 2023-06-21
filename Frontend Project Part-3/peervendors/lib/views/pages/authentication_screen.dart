import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteF4F5F7,
      body: Center(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 356.w,
                height: 115.h,
              ),
              Image.asset(
                'images/pvLogo.png',
                height: 99.h,
                width: 99.h,
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                'Let’s Get Started.',
                style: TextStyle(
                    color: black3A3030,
                    fontFamily: poppins,
                    fontWeight: FontWeight.w600,
                    fontSize: 36.sp,
                    height: 54.0.toFigmaHeight(36.sp)),
              ),
              SizedBox(
                  width: 301.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If you continue, you are accepting Our Terms & Conditions and',
                        style: TextStyle(
                            color: black3A3030,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.sp,
                            height: 27.0.toFigmaHeight(18.sp)),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero),
                        onPressed: null,
                        child: Text(
                          'Privacy Policy.',
                          style: TextStyle(
                              color: blue00A3FF,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.sp,
                              height: 27.0.toFigmaHeight(18.sp)),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 88.h,
              ),
              CustomButton(
                onPressed: () {},
                buttonText: 'Register',
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomButton(
                onPressed: () {},
                buttonText: 'Login',
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                  width: 356.w,
                  child: Column(
                    children: [
                      Text(
                        'OR Continue With',
                        style: TextStyle(
                            color: black3A3030,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w300,
                            fontSize: 18.sp,
                            height: 27.0.toFigmaHeight(18.sp)),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                color: whiteC4C4C4.withOpacity(.5),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'images/googleIcon.png',
                                height: 25.h,
                                width: 25.w,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 41.w,
                          ),
                          Container(
                            height: 45.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                color: whiteC4C4C4.withOpacity(.5),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'images/facebookIcon.png',
                                height: 25.h,
                                width: 25.w,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 41.w,
                          ),
                          Container(
                            height: 45.h,
                            width: 45.w,
                            decoration: BoxDecoration(
                                color: whiteC4C4C4.withOpacity(.5),
                                shape: BoxShape.circle),
                            child: Center(
                              child: Image.asset(
                                'images/twitterIcon.png',
                                height: 25.h,
                                width: 25.w,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: 52.h,
              ),
              SizedBox(
                width: 356.w,
                child: Row(children: [
                  Image.asset(
                    'images/playButton.png',
                    height: 25.h,
                    width: 25.w,
                  ),
                  SizedBox(
                    width: 9.w,
                  ),
                  Text(
                    'Need Help ?',
                    style: TextStyle(
                        color: pinkFF7465,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        height: 27.0.toFigmaHeight(18.sp)),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
