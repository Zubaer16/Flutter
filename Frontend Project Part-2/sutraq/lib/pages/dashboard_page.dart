import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xFF051F0E),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 27).r,
                  child: SizedBox(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(top: 2).r,
                        child: Container(
                          height: 30.h,
                          width: 30.w,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF3417A8),
                                    Color(0xff4e17ab),
                                  ],
                                  begin: Alignment.bottomLeft,
                                  stops: [1, 0.53]),
                              shape: BoxShape.circle),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'OP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                      title: Text('Hello, Precious!',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      subtitle: Text(
                        'Su/Pre123',
                        style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                      trailing: Stack(children: [
                        Icon(
                          Icons.notifications,
                          size: 27.w,
                          color: Colors.white.withOpacity(0.6),
                        ),
                        Positioned(
                          right: 4,
                          top: 2,
                          child: Container(
                            height: 6.h,
                            width: 6.w,
                            decoration: const BoxDecoration(
                                color: Color(0xFF046AE1),
                                shape: BoxShape.circle),
                          ),
                        )
                      ]),
                    ),
                  ),
                )
              ],
            )));
  }
}
