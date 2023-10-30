import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key, this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    print(FirebaseAuth.instance.currentUser?.uid);
    return Scaffold(
      body: Center(
        child: Text('Welcome ${user?.displayName}'),
      ),
    );
  }
}
