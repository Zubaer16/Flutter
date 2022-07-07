import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:learngetx/pages/navigatoin2.dart';
import 'package:learngetx/pages/route.dart';

class NavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {
              Get.toNamed(navSecond);
            },
            child: Text('Go to second screen'),
          ),
        ),
      ),
    );
  }
}
