// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/custom_cards.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class DebitCredidCardRadio extends StatelessWidget {
  DebitCredidCardRadio(
      {Key? key,
      this.cardColor,
      required this.isDot,
      required this.value,
      required this.groupValue,
      required this.onChanged})
      : super(key: key);
  final Color? cardColor;
  final bool isDot;
  final String value;
  final String groupValue;
  void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => {
            if (value != groupValue) {onChanged(value)}
          },
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    'Set as default',
                    style: TextStyle(
                        color: Color(0xff000000).withOpacity(.5),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: circularStd),
                  ),
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              CustomCards(dots: isDot, color: cardColor),
            ],
          ),
        ),
        TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 12, 10, 24),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero),
            child: Text(
              'Remove',
              style: TextStyle(
                  color: Color(0xffEC615B),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  fontFamily: circularStd),
            )),
      ],
    );
  }
}
