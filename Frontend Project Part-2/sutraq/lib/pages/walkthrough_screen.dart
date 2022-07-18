// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sutraq/components/walkthrough_pic.dart';

class Walkthrough_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Walkthrough_Pic(
        padding_left: 10,
        padding_top: 30,
        container_height: 360,
        stack_1st_image: 'images/walkthroughFrame-1.png',
        stack_1st_image_top: 50,
        stack_1st_image_height: 208,
        stack_2nd_image: 'images/walkthrough-1.png',
        stack_2nd_image_top: 99,
        stack_2nd_image_left: 60,
        stack_2nd_image_height: 257,
        stack_2nd_image_width: 264,
      ),
    );
  }
}
