import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxandTheme extends StatelessWidget {
  const GetxandTheme({Key? key}) : super(key: key);

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
