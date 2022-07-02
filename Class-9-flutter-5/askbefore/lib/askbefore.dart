// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class AskBefore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F6F6),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Image.asset(
                  "assets/logo.png",
                  height: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5, top: 10),
                child: Container(
                  height: 30,
                  width: 150,
                  child: Center(
                      child: Text(
                    'Record their answer',
                    style: TextStyle(
                        color: Color(0xFF5B858F),
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Color(0xFF5B858F), width: 2)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
