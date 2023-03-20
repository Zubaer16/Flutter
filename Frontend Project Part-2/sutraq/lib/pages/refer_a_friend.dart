import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ReferAFriend extends StatelessWidget {
  const ReferAFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF1F3F4),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ).r,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Refer a Friend',
                    style: TextStyle(
                        color: Color(0xff08083d),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: gelion),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ).r,
                child: CustomCircleButton(onPressed: () => {Get.back()}),
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          Container(
            height: 568.h,
            width: 325.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15).r)),
            child: Column(children: [
              SizedBox(
                height: 38.h,
              ),
              Image.asset(
                'images/referpic.png',
                height: 190.h,
                width: 194.w,
              ),
              SizedBox(
                height: 39.h,
              ),
              Text(
                'Earn cash reward when your friends \n signup and use your referral link or \n code',
                style: TextStyle(
                    color: Color(0xff000000).withOpacity(.5),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    height: 1.6.h,
                    fontFamily: circularStd),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 39.h,
              ),
              Container(
                height: 74.h,
                width: 227.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20).r),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topLeft,
                        stops: [
                          1,
                          0
                        ],
                        colors: [
                          Color(0xffF2F8FF).withOpacity(1),
                          Color(0xffD7E9FF00).withOpacity(0)
                        ])),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'SU12344',
                    style: TextStyle(
                        color: Color(0xff0A004A).withOpacity(.9),
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: circularStd),
                  ),
                  SizedBox(
                    width: 64.w,
                  ),
                  InkWell(
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(text: "SU12344"));
                      Fluttertoast.showToast(
                          msg: "Text Copied",
                          gravity: ToastGravity.CENTER,
                          fontSize: 16.0);
                    },
                    child: Icon(
                      contentCopy,
                      color: Color(0xff6681F0),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                width: 227.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Accepted',
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(.5),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: circularStd),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              color: Color(0xff0A004A).withOpacity(.9),
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Amount Earned',
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(.5),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: circularStd),
                        ),
                        Text(
                          'N200',
                          style: TextStyle(
                              color: Color(0xff0A004A).withOpacity(.9),
                              fontSize: 21.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }
}
