import 'package:firebase_main/views/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          TextField(
            controller: _email,
          ),
          TextField(
            controller: _pass,
          ),
          ElevatedButton(onPressed: () {}, child: Text('Sign IN')),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, CupertinoPageRoute(builder: (_) => SignUp()));
              },
              child: Text("don't have an accout? Sign-UP"))
        ]),
      ),
    ));
  }
}
