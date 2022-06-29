// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:myfirstapp/bottom_nav_controller.dart';
import 'package:myfirstapp/languages.dart';

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
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 30),
          bodyText2: TextStyle(fontSize: 60, color: Colors.blue),
        ),
        scaffoldBackgroundColor: Colors.green,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25)))),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(primary: Colors.white),
        // )
      ),
      initialRoute: '/',
      home: BottomNavController(),
    );
  }
}
