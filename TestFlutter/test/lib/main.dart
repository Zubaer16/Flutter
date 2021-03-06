// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/pageView/caro_slider.dart';
import 'package:test/passDynamicValueAnotherCalss/dynamic_value.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CaroSlider(),
    );
  }
}
