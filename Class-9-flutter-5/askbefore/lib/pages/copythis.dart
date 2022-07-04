// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CopyThis extends StatelessWidget {
  const CopyThis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      // <-- OutlinedButton
      style: ElevatedButton.styleFrom(
          primary: Color(
        0xFF4F7C87,
      )),
      onPressed: () {},
      icon: Icon(Icons.copy, size: 10.0, color: Colors.white),
      label: Text(
        'Copy this line',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
