// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'app_name'.tr,
                style: TextStyle(fontSize: 40),
              ),
              Text(
                'app_title'.tr,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(
                      Locale('en', 'US'),
                    );
                  },
                  child: Text('english')),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(
                      Locale('bn', 'BD'),
                    );
                  },
                  child: Text('bangla')),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
