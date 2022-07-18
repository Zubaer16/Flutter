import 'package:flutter/material.dart';

class Sutraq_logo extends StatelessWidget {
  final double? width;
  final double? height;

  const Sutraq_logo({this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      'images/sutraq_logo.png',
      width: this.width,
      height: this.height,
    ));
  }
}
