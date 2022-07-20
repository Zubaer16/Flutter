import 'package:flutter/material.dart';

class SutraqLogo extends StatelessWidget {
  final double? width;
  final double? height;

  const SutraqLogo({Key? key, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      'images/sutraq_logo.png',
      width: width,
      height: height,
    ));
  }
}
