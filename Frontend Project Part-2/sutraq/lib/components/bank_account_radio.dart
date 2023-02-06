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
            width: 19.w,
          ),
          Icon(
            accountBalance,
            color: greenColor,
            // size: 30.w,
          ),
        ],
      ),
    );
  }
}
