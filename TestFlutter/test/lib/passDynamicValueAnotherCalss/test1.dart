// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/passDynamicValueAnotherCalss/test2.dart';
import 'package:test/passDynamicValueAnotherCalss/test2.dart';

List<String> myList = ['hi', 'this', 'is'];

class Test1 extends StatefulWidget {
  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  int value = 0;
  // Pass this method to the child page.
  void _update(int newValue) {
    setState(() => value = newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(myList[value]),
        Test2(update: _update),
      ],
    );
  }
}
