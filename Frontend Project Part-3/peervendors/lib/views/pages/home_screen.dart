import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peervendors/storage/color_storage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteF4F5F7,
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
