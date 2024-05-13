import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_icons.dart';

class NavFavourite extends StatelessWidget {
  const NavFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/navAddItemPic1.png',
                    height: 300.h,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0).r,
                        child: const Icon(
                          AppIcons.removeCircle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
