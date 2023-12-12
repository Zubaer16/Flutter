import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreScreen extends StatelessWidget {
  const FirestoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Create document'),
        ),
      ),
    ));
  }
}
