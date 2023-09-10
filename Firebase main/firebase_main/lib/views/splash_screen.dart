import 'dart:async';

import 'package:firebase_main/views/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => SignUp()));
    });

    return Scaffold(
      body: Center(child: CircleAvatar()),
    );
  }
}
