import 'package:flutter/material.dart';
import 'package:shelter/ui/widgets/custom_appbar.dart';

class HowToUse extends StatelessWidget {
  const HowToUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('How to use'),
        body: Center(child: Text('Video player')));
  }
}
