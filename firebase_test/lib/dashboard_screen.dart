import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen(
      {super.key, this.googleUser, this.phoneUser, this.emailUser});

  final User? googleUser;
  final User? phoneUser;
  final User? emailUser;

  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser?.uid);
    return Scaffold(
      body: Center(
        child: Text('Welcome  ${googleUser?.displayName}'),
      ),
    );
  }
}
