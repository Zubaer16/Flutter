import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';

class CheckInboxScreen extends StatelessWidget {
  const CheckInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: splashBackgroundColor,
      body: Align(
          alignment: Alignment.center,
          child: SizedBox(
              height: 448.h, width: 332.w, child: Card(child: Text('hi')))),
    ));
  }
}
