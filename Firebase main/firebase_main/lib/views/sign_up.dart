import 'package:firebase_main/helper/auth_helper.dart';
import 'package:firebase_main/views/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

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
            ElevatedButton(
                onPressed: () {
                  final userEmail = _email.text;
                  final userPass = _pass.text;
                  var obj = AuthHelper();
                  obj.signUp(userEmail, userPass, context);
                },
                child: Text('Sign UP')),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context, CupertinoPageRoute(builder: (_) => SignIn()));
                },
                child: Text('already created an accout? Login'))
          ]),
        ),
      ),
    );
  }
}
