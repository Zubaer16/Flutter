import 'package:firebase_test/login_screen.dart';
import 'package:flutter/material.dart';

class VerifyMessage extends StatelessWidget {
  const VerifyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'A verification link is sent to your account. Please check your email for verifying email address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
                child: Text('Go to login page'))
          ],
        ),
      ),
    );
  }
}
