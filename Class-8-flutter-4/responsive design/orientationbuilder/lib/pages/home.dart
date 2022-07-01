// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OrientationBuilder(builder: (_, orientation) {
      if (orientation == Orientation.portrait) {
        return Center(
          child: Text('Portrait'),
        );
      } else {
        return Center(
          child: Text('Landscape'),
        );
      }
    }));
  }
}
