import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetxandState extends StatelessWidget {
  var _counter = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Obx(() => Text(_counter.string)),
          onPressed: () {
            _counter++;
          },
        ),
      ),
    );
  }
}
