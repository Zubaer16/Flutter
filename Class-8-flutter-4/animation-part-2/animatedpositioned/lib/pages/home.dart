// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _right = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Container(
              height: 400,
              width: 400,
              color: Colors.green,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      right: _right,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _right = 50;
                            });
                          },
                          child: Text('animate')),
                      duration: Duration(seconds: 5))
                ],
              ),
            )),
      ),
    );
  }
}
