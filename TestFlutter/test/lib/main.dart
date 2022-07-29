// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/nested_scroll_view/nest_scroll_view.dart';
import 'package:test/single_child_scroll_view/single_child_scr.dart';

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
      home: SingleChildScr(),
    );
  }
}
