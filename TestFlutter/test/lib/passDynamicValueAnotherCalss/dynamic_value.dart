import 'package:flutter/material.dart';
import 'package:test/passDynamicValueAnotherCalss/dynamic_value_1.dart';

class DynamicValue extends StatelessWidget {
  const DynamicValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
          Container(
              height: 300,
              width: 300,
              color: Colors.green,
              child: Align(alignment: Alignment.center, child: Text('hi'))),
          Container(
            height: 30,
            width: 30,
            color: Colors.amber,
          ),
          DynamicValue1(),
        ],
      )),
    );
  }
}
