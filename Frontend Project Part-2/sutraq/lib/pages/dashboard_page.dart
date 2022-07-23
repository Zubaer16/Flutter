import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF051F0E),
            body: Column(
              children: [
                ListTile(
                  leading: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFF3417A8),
                          Color(0xFF4E17A887),
                        ], stops: [
                          1,
                          0.53
                        ]),
                        shape: BoxShape.circle),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'OP',
                        style: TextStyle,
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
