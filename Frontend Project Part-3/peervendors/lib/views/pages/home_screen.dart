import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> categories = ['asdf'];

    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            backgroundColor: whiteF4F5F7,
            body: Column(
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
                              width: 1.w, color: black000000.withOpacity(0.5)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28).r,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Text('hi')),
                )
              ],
            )),
      ),
    );
  }
}
