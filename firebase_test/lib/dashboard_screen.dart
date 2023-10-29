import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class DashBoardScreen extends StatelessWidget {
  DashBoardScreen({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Welcome ${user?.displayName}'),
      ),
    );
  }
}
