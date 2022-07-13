import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learngetx/pages/route.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('getx learning'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(navigationScreen);
                    },
                    child: Text('Navigation')),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(snackBar);
                    },
                    child: Text('Snackbar')),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(getxstate);
                    },
                    child: Text('GetxState')),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(storage);
                    },
                    child: Text('GetStorage')),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(getValid);
                    },
                    child: Text('ValidationGetx')),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(getTheme);
                    },
                    child: Text('Change Theme')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
