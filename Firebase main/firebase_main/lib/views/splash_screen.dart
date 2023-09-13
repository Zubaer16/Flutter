import 'dart:async';
import 'package:firebase_main/views/home_screen.dart';
import 'package:firebase_main/views/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Splash extends StatelessWidget {
  Splash({super.key});
  final box = GetStorage();

  chooseScreen(context) async {
    var userId = box.read('id');
    if (userId != null) {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => HomeScreen()));
    } else {
      Navigator.push(context, CupertinoPageRoute(builder: (_) => SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      chooseScreen(context);
    });

    return Scaffold(
      body: Center(child: CircleAvatar()),
    );
  }
}
