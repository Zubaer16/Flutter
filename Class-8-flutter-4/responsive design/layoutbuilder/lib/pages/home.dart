// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (_, constrains) {
        if (constrains.maxWidth < 480) {
          return Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          );
        } else if (constrains.maxWidth > 480 && constrains.maxWidth < 800) {
          return Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          );
        } else {
          return Container(
            height: 100,
            width: 100,
            color: Colors.black,
          );
        }
      },
    ));
  }
}
