// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class BankAccountRadio extends StatelessWidget {
  BankAccountRadio(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);

  final String value;
  final String groupValue;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => {
            if (value != groupValue) {onChanged(value)}
          },
          child: Container(
            width: 339.w,
            height: 62.h,
            decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Color(0xffdedede)))),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 28.5.h,
                  left: 18.87.w,
                  child: Icon(
                    accountBalance,
                    color: greenColor,
                    size: 24.w,
                  ),
                ),
                Positioned(
                  left: 57.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        '9381053802',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '(Access Bank - Precious Ogar)',
                        style: TextStyle(
                          color: Color(0xff595959),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 28.5.h,
                  right: 18.87.w,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20.h,
                    width: 20.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: value != groupValue
                              ? Color(0xff666666)
                              : greenColor),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      check,
                      color: value != groupValue ? Colors.white : greenColor,
                      size: 17.w,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 57).r,
          child: TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size.zero),
              child: Text(
                'Remove',
                style: TextStyle(
                    color: Color(0xffEC615B),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
              )),
        )
      ],
    );
  }
}
