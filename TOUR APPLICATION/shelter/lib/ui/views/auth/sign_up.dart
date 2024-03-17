import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/business_logics/auth.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/validator/regex_extention.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else {
          exit(0);
        }
      },
      child: SafeArea(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 80).r,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create\nYour Account',
                        style: AppStyles.textStyleV36500,
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text('Create your account and start your\njourney',
                          style: AppStyles.textStyleB16300),
                      SizedBox(
                        height: 102.h,
                      ),
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'This field cannot be empty';
                          } else if (val.isValidEmail() == false &&
                              val.isNotEmpty) {
                            return 'Please enter a valid email address';
                          } else {
                            return null;
                          }
                        },
                        decoration:
                            AppStyles.inputDecorationStyle_1('E-mail Address'),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        validator: (val) {
                          if (val!.isEmpty) {
                            return 'This field cannot be empty';
                          } else if (val.length < 8) {
                            return 'Passsword must be at least 8 characters';
                          } else {
                            return null;
                          }
                        },
                        decoration:
                            AppStyles.inputDecorationStyle_1('Enter Password'),
                      ),
                      SizedBox(
                        height: 102.h,
                      ),
                      VioletButton(
                          title: 'Create Account',
                          value: ButtonLoadingState.signUpValue,
                          onAction: () {
                            if (_formKey.currentState!.validate()) {
                              ButtonLoadingState.signUpValue.value = true;
                              Auth().registration(_emailController.text,
                                  _passwordController.text, context);
                            }
                          }),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                          child:
                              Text('--OR--', style: AppStyles.textStyleB16300)),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/facebook.png',
                              height: 23.h,
                              width: 23.w,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/icons/google.png',
                              height: 23.h,
                              width: 23.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'Already an user? ',
                                style: AppStyles.textStyleB18300,
                                children: [
                              TextSpan(
                                  text: 'Log In',
                                  style: AppStyles.textStyleV18600,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Get.toNamed(logIn);
                                    })
                            ])),
                      )
                    ]),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
