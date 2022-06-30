// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Alignment _alignment = Alignment.centerRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            children: [
              AnimatedAlign(
                  duration: Duration(seconds: 5),
                  alignment: _alignment,
                  child: Text('My text')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _alignment = Alignment.centerLeft;
                    });
                  },
                  child: Text('Chagne alignment'))
            ],
          ),
        ),
      ),
    );
  }
}
