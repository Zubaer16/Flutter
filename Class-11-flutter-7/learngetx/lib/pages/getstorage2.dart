// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class GentandStorage2 extends StatelessWidget {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('data ${box.read('data')['name']}');
        },
      ),
      body: Center(
        child: Text('data ${box.read('data')['age']}'),
      ),
    ));
  }
}
