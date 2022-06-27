// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/details_screen.dart';

class MyAdsScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(_controller);
        },
        child: Icon(Icons.abc_outlined),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextField(
                controller: _controller,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'enter your email'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else if (val.length < 4) {
                    return "Enter a valid email";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(hintText: 'enter your name'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(hintText: 'enter your password'),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "This field can't be empty";
                  } else if (val.length < 6) {
                    return "Password length must be 6-8";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (_) => DetailsScreen()));
                    }
                  },
                  child: Text('Validate now'),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
