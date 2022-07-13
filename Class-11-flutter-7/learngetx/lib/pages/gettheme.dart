import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/themes/theme_controller.dart';

class GetxandTheme extends StatelessWidget {
  GetxandTheme({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text('Dark/Light'),
        onPressed: () {
          Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
        },
      )),
    );
  }
}
