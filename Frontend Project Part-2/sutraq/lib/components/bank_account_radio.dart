import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class BankAccountRadio extends StatelessWidget {
  const BankAccountRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 339.w,
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffdedede)))),
      child: Row(
        children: [
          SizedBox(
            width: 18.88.w,
          ),
          Icon(
            accountBalance,
            color: greenColor,
            // size: 30.w,
          ),
          SizedBox(
            width: 20.88.w,
          ),
          Column(
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
                    height: 2.447.h),
              ),
              Text(
                '(Access Bank - Precious Ogar)',
                style: TextStyle(
                    color: Color(0xff595959),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    height: 2.307.h),
              ),
              TextButton(
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
                  ))
            ],
          )
        ],
      ),
    );
  }
}
