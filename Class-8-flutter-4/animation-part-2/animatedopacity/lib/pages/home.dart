// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            _opacity = 0.2;
          });
        },
        child: Text('change opacity'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 2),
                  child: Card(
                    child: ListTile(
                      title: Text('My List tile'),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
