// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TryAnother extends StatefulWidget {
  ValueChanged<int> update;
  TryAnother({Key? key, required this.update});

  @override
  State<TryAnother> createState() => _TryAnotherState();
}

class _TryAnotherState extends State<TryAnother> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      // <-- OutlinedButton
      style: ElevatedButton.styleFrom(
          primary: Color(
        0xFF4F7C87,
      )),
      onPressed: () {
        value++;
        if (value == 3) {
          value = 0;
          widget.update(value);
        } else {
          widget.update(value);
        }
      },
      icon: Icon(Icons.copy, size: 10.0, color: Colors.white),
      label: Text(
        'Try another',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
