import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/const/app_strings.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_add.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_favourite.dart';
import 'package:shelter/ui/views/bottom_nav_controller/pages/nav_home.dart';

class BottomNavController extends StatelessWidget {
  BottomNavController({super.key});
  final RxInt _currentIndex = 0.obs;
  final RxBool _drawer = false.obs;
  final pages = [const NavHome(), const NavAdd(), const NavFavourite()];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: 400),
        top: _drawer.value == false ? 0 : 100.h,
        bottom: _drawer.value == false ? 0 : 100.h,
        left: _drawer.value == false ? 0 : 200.w,
        right: _drawer.value == false ? 0 : -100.w,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(AppStrings.appBarName),
            elevation: 0,
            leading: _drawer.value == false
                ? IconButton(
                    onPressed: () {
                      _drawer.value = true;
                    },
                    icon: Icon(AppIcons.menuIcon))
                : IconButton(
                    onPressed: () {
                      _drawer.value = false;
                    },
                    icon: const Icon(AppIcons.close)),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                _currentIndex.value = value;
              },
              currentIndex: _currentIndex.value,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(AppIcons.add), label: 'Add'),
                BottomNavigationBarItem(
                    icon: Icon(AppIcons.favourite), label: 'Favourite')
              ]),
          body: pages[_currentIndex.value],
        ),
      ),
    );
  }
}
