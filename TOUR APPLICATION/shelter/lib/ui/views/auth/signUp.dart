import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 80).r,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Create Your\nAccount',
              style: AppStyles.textStyle_3,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text('Create your account and start your\njourney',
                style: AppStyles.textStyle_4),
            SizedBox(
              height: 102.h,
            ),
            TextFormField(
              controller: _emailController,
              decoration: AppStyles.inputDecorationStyle_1('E-mail Address'),
            ),
            SizedBox(
              height: 28.h,
            ),
            TextFormField(
              controller: _passwordController,
              decoration: AppStyles.inputDecorationStyle_1('Enter Password'),
            ),
          ]),
        ),
      ),
    ));
  }
}
