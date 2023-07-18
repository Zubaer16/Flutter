import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/categories_provider.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String?> categories = CategoriesProvider().getGetCategories;

    final List<Map> watch = List.generate(
        20,
        (index) => {
              'image': 'images/appleWatch.png',
              'name': 'Apple Watch',
              'model': 'Series 6 . Red',
              'price': 359
            });

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            backgroundColor: whiteF4F5F7,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 60.h,
                    width: MediaQuery.of(context).size.width,
                    color: whiteFFFFFF,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28.w,
                        ),
                        Image.asset(
                          'images/location.png',
                          height: 21.h,
                          width: 21.w,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          'Gazipur,  Dhaka',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 18.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w400,
                              height: 27.0.toFigmaHeight(18.sp)),
                        ),
                        SizedBox(
                          width: 176.w,
                        ),
                        InkWell(
                          onTap: null,
                          child: Image.asset(
                            'images/help.png',
                            height: 21.h,
                            width: 21.w,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    width: 370,
                    height: 48,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search Products',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 15.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 1),
                          contentPadding: const EdgeInsets.only(left: 21).r,
                          suffixIcon: const InkWell(
                            onTap: null,
                            child: Icon(
                              search,
                              size: 21,
                              color: black000000,
                            ),
                          ),
                          filled: true,
                          fillColor: whiteFFFFFF,
                          focusColor: whiteF4F5F7,
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)).r,
                            borderSide: BorderSide(
                                width: 1.w,
                                color: black000000.withOpacity(0.5)),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25).r,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 39.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 7).r,
                                child: ElevatedButton(
                                    onPressed: null,
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: whiteC4C4C4,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                                        Radius.circular(20))
                                                    .r)),
                                    child: Text(
                                      categories[index]!,
                                      style: TextStyle(
                                          fontFamily: poppins,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15.sp,
                                          // height: 36.0.toFigmaHeight(24.sp),
                                          color: black3A3030),
                                    )),
                              );
                            })),
                  ),
                  SizedBox(
                    height: 74.9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20).r,
                    child: Wrap(
                      spacing: 24.6.w,
                      runSpacing: 74.9.h,
                      children: [
                        ...List.generate(
                            watch.length,
                            (index) => Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 170.34.w,
                                      height: 217.10.h,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x19393939),
                                            blurRadius: 60,
                                            offset: Offset(0, 30),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: Center(
                                        child: SizedBox(
                                          width: 136.w,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 119.1.h),
                                              Text(
                                                watch[index]['name'],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: black000000
                                                      .withOpacity(.9),
                                                  fontSize: 22.sp,
                                                  fontFamily: raleway,
                                                  fontWeight: FontWeight.w600,
                                                  height: 22.29
                                                      .toFigmaHeight(22.sp),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7.h,
                                              ),
                                              Text(
                                                watch[index]['model'],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: white858585
                                                        .withOpacity(0.9),
                                                    fontSize: 16.sp,
                                                    fontFamily: raleway,
                                                    fontWeight: FontWeight.w600,
                                                    height: 18.78
                                                        .toFigmaHeight(16.sp)),
                                              ),
                                              SizedBox(
                                                height: 7.h,
                                              ),
                                              Text.rich(TextSpan(
                                                  text: '\$ ',
                                                  style: TextStyle(
                                                      color: blue5956E9,
                                                      fontSize: 17.sp,
                                                      fontFamily: raleway,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 19.96
                                                          .toFigmaHeight(
                                                              17.sp)),
                                                  children: [
                                                    TextSpan(
                                                      text: watch[index]
                                                              ['price']
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: blue5956E9,
                                                          fontSize: 17.sp,
                                                          fontFamily: raleway,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 19.96
                                                              .toFigmaHeight(
                                                                  17.sp)),
                                                    )
                                                  ])),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 10.81.w,
                                      bottom: 114.18.h,
                                      child: Image.asset(
                                        watch[index]['image'],
                                        height: 151.97.h,
                                        width: 147.11.w,
                                      ),
                                    ),
                                  ],
                                ))
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
