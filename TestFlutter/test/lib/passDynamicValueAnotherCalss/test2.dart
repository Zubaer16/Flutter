import 'package:flutter/material.dart';

class Test2 extends StatefulWidget {
  ValueChanged<int> update;
  Test2({required this.update});
  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          value++;
          if (value == 3) {
            value = 0;
            widget.update(value);
          } else {
            widget.update(value);
          }
        },
        child: Text('presss'));
  }
}
