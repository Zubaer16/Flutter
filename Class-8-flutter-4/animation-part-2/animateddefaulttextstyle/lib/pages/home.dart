// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _fontSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            AnimatedDefaultTextStyle(
                child: Text(
                  'We are learning animated default text style',
                  style: TextStyle(color: Colors.blue),
                ),
                style: TextStyle(fontSize: _fontSize),
                duration: Duration(seconds: 2)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _fontSize = 50;
                  });
                },
                child: Text('Animate'))
          ],
        ),
      )),
    );
  }
}
