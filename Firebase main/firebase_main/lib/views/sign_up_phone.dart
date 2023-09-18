import 'package:firebase_main/helper/auth_helper_phone.dart';
import 'package:flutter/material.dart';

class SignUpPhone extends StatelessWidget {
  SignUpPhone({super.key});
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
            ),
            ElevatedButton(
                onPressed: () {
                  AuthHelperPhone().phoneAuth(_phoneController.text, context);
                },
                child: Text('continue'))
          ],
        ),
      ),
    ));
  }
}
