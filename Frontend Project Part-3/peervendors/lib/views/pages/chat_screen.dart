import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

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
                          decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(6))
                                        .r,
                                borderSide: BorderSide(
                                    width: 1.w,
                                    color: black000000.withOpacity(0.5)),
                              ),
                              fillColor: black373333.withOpacity(0.25),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.transparent,
                              )))),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
