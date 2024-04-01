import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/views/bottom_nav_controller/nav_controller.dart';
import 'package:shelter/ui/views/drawer_screen.dart';

class MainHomeScreen extends StatelessWidget {
  const MainHomeScreen({super.key});

  Future _exitDialog(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Are u sure to exit this app?'),
            content: Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('No')),
                SizedBox(
                  width: 20.w,
                ),
                ElevatedButton(
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                    child: const Text('Yes'))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        _exitDialog(context);
      },
      child: Scaffold(
        body: Stack(
          children: [const DrawerScreen(), BottomNavController()],
        ),
      ),
    );
  }
}
