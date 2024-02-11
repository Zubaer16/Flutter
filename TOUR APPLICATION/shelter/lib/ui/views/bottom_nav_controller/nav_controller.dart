import 'package:flutter/material.dart';

class BottomNavController extends StatelessWidget {
  const BottomNavController({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
          child: Scaffold(
        body: Text('Bottom nav'),
      )),
    );
  }
}
