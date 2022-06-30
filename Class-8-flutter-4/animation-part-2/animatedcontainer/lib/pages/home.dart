// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _height = 100;

  double _width = 200;

  Color _color = Colors.black;

  void animatedContainer() {
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.bounceInOut,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              onEnd: () {
                setState(() {
                  _width = _width == 200 ? 400 : 200;
                  _color = _color == Colors.black ? Colors.green : Colors.black;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    animatedContainer();
                  });
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
