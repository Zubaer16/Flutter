// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/pages/route.dart';

class ValidationGetx extends StatefulWidget {
  const ValidationGetx({Key? key}) : super(key: key);

  @override
  State<ValidationGetx> createState() => _ValidationGetxState();
}

class _ValidationGetxState extends State<ValidationGetx> {
  @override
  final emailController = TextEditingController();
  bool isVisible = false;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Enter your email'),
              ),
              Container(
                width: 500,
                child: Visibility(
                    visible: isVisible,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        textAlign: TextAlign.start,
                        'Please enter valid email',
                        style: TextStyle(color: Colors.red),
                      ),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      GetUtils.isEmail(emailController.text)
                          ? Get.toNamed(getValid2)
                          : isVisible = true;
                    });
                  },
                  child: Text('Validate'))
            ],
          ),
        ),
      ),
    );
  }
}
