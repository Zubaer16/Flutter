// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Hello Zubaer',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          Text(
            "Let's gets something?",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4F4C4C)),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Text(
                  "40 % off During\ncovid 19",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Image.asset(
                  "assets/vegetables.png",
                  width: 160,
                  height: 100,
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
