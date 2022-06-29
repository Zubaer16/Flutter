// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:localization/bottom_nav_controller.dart';
import 'package:localization/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      home: BottomNavController(),
    );
  }
}
