import 'package:flutter/material.dart';
import 'package:shelter/ui/styles/styles.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'How to use',
            style: AppStyles.textStyleB20400,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(child: Text('Video player')));
  }
}
