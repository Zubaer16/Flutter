// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:askbefore/pages/copyButton.dart';
import 'package:askbefore/pages/copythis.dart';
import 'package:askbefore/pages/logo.dart';
import 'package:askbefore/pages/nav.dart';
import 'package:askbefore/pages/question.dart';
import 'package:askbefore/pages/smallText1.dart';

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
            children: [Logo(), Nav()],
          ),
          SmallText1(),
          Question(),
          CopyThis()
        ],
      ),
    );
  }
}
