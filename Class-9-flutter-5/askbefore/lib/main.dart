// ignore_for_file: prefer_const_constructors

import 'package:askbefore/askbefore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1366, 768),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AskBefore(),
      ),
    );

    /* MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AskBefore(),
    );*/
  }
}
