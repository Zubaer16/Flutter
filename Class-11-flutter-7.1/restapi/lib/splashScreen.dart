// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:restapi/homeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen())));

    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 40,
          ),
          Text(
            'Example',
            style: TextStyle(fontSize: 25),
          )
        ]),
      ),
    );
  }
}
