// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
            child: FractionallySizedBox(
              heightFactor: 1,
              widthFactor: 0.5,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
