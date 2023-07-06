import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/email_phone_button_provider.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';
import 'package:peervendors/views/components/custom_circle_button.dart';
import 'package:peervendors/views/components/email_phone_button.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailPhoneController = TextEditingController();

  @override
  void dispose() {
    _emailPhoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: WillPopScope(
        onWillPop: () async {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          // For ios : -> MinimizeApp.minimizeApp();

          return false;
        },
        child: Scaffold(
            backgroundColor: whiteF4F5F7,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: SizedBox(
                  width: 356.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 44.h,
                        ),
                        CustomCircleButton(onPressed: () => Get.back()),
                        SizedBox(
                          height: 36.h,
                        ),
                        Text(
                          'Login to Proceed.',
                          style: TextStyle(
                              color: black3A3030,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w600,
                              fontSize: 36.sp,
                              height: 54.0.toFigmaHeight(36.sp)),
                        ),
                        SizedBox(
                          height: 64.h,
                        ),
                        Consumer<EmailPhoneButtonProvider>(
                          builder: (context, val, child) => EmailPhoneButton(
                            onPressedPhone: () {
                              if (val.getValue != 'phone') {
                                val.setValue = 'phone';
                                _emailPhoneController.clear();
                                FocusScope.of(context).unfocus();
                              }
                            },
                            onPressedEmail: () {
                              if (val.getValue != 'email') {
                                val.setValue = 'email';
                                _emailPhoneController.clear();
                                FocusScope.of(context).unfocus();
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 69.h,
                        ),
                        SizedBox(
                          height: 37.h,
                        ),
                        Consumer<EmailPhoneButtonProvider>(
                          builder: (context, val, child) => Text(
                            val.getValue == 'phone' ? 'Phone Number' : 'Email',
                            style: TextStyle(
                                color: black3A2F2F,
                                fontSize: 18.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w300,
                                height: 27.0.toFigmaHeight(18.sp)),
                          ),
                        ),
                        Consumer<EmailPhoneButtonProvider>(
                          builder: (context, val, child) => SizedBox(
                              height: 30.h,
                              child: TextFormField(
                                controller: _emailPhoneController,
                                keyboardType: val.getValue == 'phone'
                                    ? TextInputType.phone
                                    : TextInputType.emailAddress,
                              )),
                        ),
                        SizedBox(
                          height: 37.h,
                        ),
                        DropdownButtonFormField(
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.black),
                          iconSize: 0,
                          value: 'Select Your Country',
                          items: ['Select Your Country', 'one', 'two', 'three']
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(
                                      e,
                                      style: const TextStyle(fontFamily: null),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {},
                          decoration: const InputDecoration(
                            suffixIcon: Icon(arrowDropDown),
                            iconColor: whiteC4C4C4,
                          ),
                        ),
                        SizedBox(
                          height: 66.h,
                        ),
                        CustomButton(
                            buttonText: 'Continue',
                            onPressed: () {
                              Get.toNamed(loginOtpScreen);
                            }),
                        SizedBox(
                          height: 37.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Don\'t Have an Account?  ',
                              style: TextStyle(
                                color: black3A2F2F,
                                fontSize: 18.sp,
                                fontFamily: poppins,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            InkWell(
                              onTap: () => {Get.toNamed(registerScreen)},
                              child: Text(
                                'Register',
                                style: TextStyle(
                                  color: blue00A3FF,
                                  fontSize: 18.sp,
                                  fontFamily: poppins,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            )),
      ),
    );
  }
}
