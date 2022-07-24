import 'package:flutter/material.dart';

class DynamicValue2 extends StatefulWidget {
  ValueChanged<int> update;
  DynamicValue2({required this.update});
  @override
  State<DynamicValue2> createState() => _DynamicValue2State();
}

class _DynamicValue2State extends State<DynamicValue2> {
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
