import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/business_logics/auth.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/validator/regex_extention.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        ButtonLoadingState.signUpValue.value = false;
      },
      child: SafeArea(
          child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 80).r,
            child: SingleChildScrollView(
              child: PopScope(
                onPopInvoked: (didPop) {
                  ButtonLoadingState.signUpValue.value = false;
                },
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login\nTo Your Account',
                          style: AppStyles.textStyle_3,
                        ),
                        SizedBox(
                          height: 102.h,
                        ),
                        TextFormField(
                          controller: _emailController,
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: AppStyles.inputDecorationStyle_1(
                              'E-mail Address'),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          decoration: AppStyles.inputDecorationStyle_1(
                              'Enter Password'),
                          validator: (val) {
                            if (val!.isEmpty) {
                              return 'This field cannot be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 102.h,
                        ),
                        VioletButton(
                          title: 'Login',
                          value: ButtonLoadingState.loginValue,
                          onAction: () {
                            if (_formKey.currentState!.validate()) {
                              ButtonLoadingState.loginValue.value = true;
                              Auth().login(_emailController.text,
                                  _passwordController.text, context);
                            }
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                            child:
                                Text('--OR--', style: AppStyles.textStyle_4)),
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
                                  text: 'Donn\'t have registered yet? ',
                                  style: AppStyles.textStyle_6,
                                  children: [
                                TextSpan(
                                    text: 'Sign Up',
                                    style: AppStyles.textStyle_7,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed(signUp);
                                      })
                              ])),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
