// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test/passDynamicValueAnotherCalss/dynamic_value_2.dart';

List<String> myList = ['hi', 'this', 'is'];

class DynamicValue1 extends StatefulWidget {
  @override
  State<DynamicValue1> createState() => _DynamicValue1State();
}

class _DynamicValue1State extends State<DynamicValue1> {
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
        DynamicValue2(update: _update),
      ],
    );
  }
}
