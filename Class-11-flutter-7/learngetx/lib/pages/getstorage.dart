// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:learngetx/pages/data.dart';
import 'package:learngetx/pages/route.dart';

class GetandStorage extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.toNamed(storage2);
      }),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
            ),
            TextField(
              controller: _ageController,
            ),
            ElevatedButton(
                onPressed: () {
                  final name = _nameController.text;
                  final age = _ageController.text;
                  final box = GetStorage();
                  box.write('data', MyData(name: name, age: age));
                  print('added');
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
