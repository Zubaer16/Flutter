import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Hero(tag: '1', child: Image.asset('assets/vegetables.png'))],
      ),
    );
  }
}
