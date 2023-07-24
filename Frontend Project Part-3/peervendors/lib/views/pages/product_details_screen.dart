import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: whiteF4F5F7,
          body: Column(
            children: [
              Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                color: whiteFFFFFF,
                child: Center(
                  child: Text(
                    'Product Details',
                    style: TextStyle(
                        color: black3A2F2F,
                        fontSize: 22.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w500,
                        height: 33.0.toFigmaHeight(22.sp)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 29, right: 29).r,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 17.h,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Text(
                      'Complete All the fields with valid information',
                      style: TextStyle(
                          color: black3A2F2F,
                          fontSize: 20.sp,
                          fontFamily: poppins,
                          fontWeight: FontWeight.w400,
                          height: 30.0.toFigmaHeight(20.sp)),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 30).r,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)).r),
                      child: TextFormField(
                        cursorColor: black3A2F2F,
                        decoration: InputDecoration(
                          hintText: 'Product Title',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 21.0.toFigmaHeight(14.sp)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 151.h,
                      padding: EdgeInsets.only(left: 30, top: 37, right: 30).r,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)).r),
                      child: TextFormField(
                        cursorColor: black3A2F2F,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Product description',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 21.0.toFigmaHeight(14.sp)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 30).r,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)).r),
                      child: TextFormField(
                        cursorColor: black3A2F2F,
                        decoration: InputDecoration(
                          hintText: 'Price',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 21.0.toFigmaHeight(14.sp)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(left: 30, right: 30).r,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)).r),
                      child: DropdownButtonFormField(
                          // value: 'Where you advertise this item ?',
                          style: TextStyle(
                            color: black3A2F2F,
                            fontSize: 14.sp,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w300,
                            height: 21.0.toFigmaHeight(14.sp),
                          ),
                          items: [
                            'Where you advertise this item ?',
                            'one',
                            'two',
                            'three'
                          ].map((e) {
                            return DropdownMenuItem(value: e, child: Text(e));
                          }).toList(),
                          decoration: InputDecoration(
                            hintText: 'Where you advertise this item ?',
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: TextStyle(
                                color: black3A2F2F,
                                fontSize: 14.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w300,
                                height: 21.0.toFigmaHeight(14.sp)),
                          ),
                          onChanged: (e) {}),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 30).r,
                      decoration: BoxDecoration(
                          color: whiteFFFFFF,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)).r),
                      child: TextFormField(
                        cursorColor: black3A2F2F,
                        decoration: InputDecoration(
                          hintText: 'Location',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 14.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 21.0.toFigmaHeight(14.sp)),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 116.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                            buttonText: 'Continue',
                            onPressed: () {
                              Get.toNamed(chooseImageScreen);
                            }),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
