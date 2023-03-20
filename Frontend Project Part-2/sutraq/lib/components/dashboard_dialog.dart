import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

// String? dialogButtonText;
// VoidCallback? customFunction;
Future<dynamic> dashboardDialog(
    BuildContext context, digalogButtonText, customFunctionButton) async {
  return await showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(.5),
      transitionDuration: const Duration(microseconds: 200),
      pageBuilder: (BuildContext context, Animation first, Animation second) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 170).r,
            child: Container(
              width: 344.w,
              height: 304.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(10).r)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 22,
                      bottom: 11,
                    ).r,
                    child: DefaultTextStyle(
                        style: TextStyle(
                            color: const Color(0xff636363),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: sfCompactDisplay),
                        child: const Text(
                          'Choose Option',
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20).r,
                    child: DefaultTextStyle(
                      style: TextStyle(
                          color: const Color(0xff000000).withOpacity(0.5),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: helveticaNeue),
                      child: const Text('Pick a card to continue'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            height: 96.h,
                            width: 102.w,
                            decoration: BoxDecoration(
                                color: const Color(0xff08083D),
                                borderRadius: BorderRadius.all(
                                    const Radius.circular(13).r)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                          top: 19, left: 9, bottom: 20)
                                      .r,
                                  child: Row(children: [
                                    Image.asset(
                                      'images/nigeria.jpg',
                                      height: 10.h,
                                      width: 13.w,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 4.67).r,
                                      child: DefaultTextStyle(
                                          style: TextStyle(
                                              color: const Color(0xffF1F3F4),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: sfCompactDisplay),
                                          child: Text('NGN')),
                                    )
                                  ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 9).r,
                                  child: Row(
                                    children: [
                                      DefaultTextStyle(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              decorationColor: Colors.white,
                                              decorationThickness: 2,
                                              fontFamily: gelion),
                                          child: Text('N')),
                                      DefaultTextStyle(
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: gelion),
                                          child: Text('12,000'))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                              left: 85.w,
                              bottom: 83.h,
                              child: Container(
                                height: 21.h,
                                width: 21.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        blurRadius: 2.r,
                                        offset: Offset(0, 1),
                                      )
                                    ]),
                                child: Image.asset('images/check_24px.png'),
                              ))
                        ],
                      ),
                      Container(
                        height: 96.h,
                        width: 102.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13).r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 0),
                                blurRadius: 17.r,
                              )
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                      top: 19, left: 9, bottom: 20)
                                  .r,
                              child: Row(children: [
                                Image.asset(
                                  'images/britain.jpg',
                                  height: 10.h,
                                  width: 13.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.67).r,
                                  child: DefaultTextStyle(
                                      style: TextStyle(
                                          color: Color(0xff08083D),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700),
                                      child: Text('GBP')),
                                )
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9).r,
                              child: Row(
                                children: [
                                  DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color(0xff08083D),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      child: Text('£500'))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 96.h,
                        width: 102.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13).r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 0),
                                blurRadius: 17.r,
                              )
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                      top: 19, left: 9, bottom: 20)
                                  .r,
                              child: Row(children: [
                                Image.asset(
                                  'images/usa.jpg',
                                  height: 10.h,
                                  width: 13.w,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.67).r,
                                  child: DefaultTextStyle(
                                      style: TextStyle(
                                          color: Color(0xff08083D),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w700),
                                      child: Text('USD')),
                                )
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 9).r,
                              child: Row(
                                children: [
                                  DefaultTextStyle(
                                      style: TextStyle(
                                        color: Color(0xff08083D),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      child: Text('\$500'))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 38).r,
                    child: CustomButton(
                      onPressed: () {
                        customFunctionButton();
                      },
                      buttonHeight: 61.h,
                      buttonWidth: 297.w,
                      buttonColor: greenColor,
                      buttonText: digalogButtonText,
                      buttonTextWeight: FontWeight.w500,
                      buttonFontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
