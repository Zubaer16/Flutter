import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SnackBarrr extends StatelessWidget {
  const SnackBarrr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Get.snackbar('Title', 'Hi there');
              Get.defaultDialog();
            },
            child: Text('click to show')),
      ),
    );
  }
}
