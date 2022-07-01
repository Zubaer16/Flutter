// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 2,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
