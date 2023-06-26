import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/email_phone_button_provider.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';
import 'package:peervendors/views/components/custom_circle_button.dart';
import 'package:peervendors/views/components/email_phone_button.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
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
                      const CustomCircleButton(),
                      SizedBox(
                        height: 36.h,
                      ),
                      Text(
                        'Create an account\nNow.',
                        style: TextStyle(
                            color: black3A3030,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w600,
                            fontSize: 36.sp,
                            height: 54.0.toFigmaHeight(36.sp)),
                      ),
                      SizedBox(
                        height: 61.h,
                      ),
                      const EmailPhoneButton(),
                      SizedBox(
                        height: 71.h,
                      ),
                      Text(
                        'Full Name',
                        style: TextStyle(
                            color: black3A2F2F,
                            fontSize: 18.sp,
                            fontFamily: poppins,
                            fontWeight: FontWeight.w300,
                            height: 27.0.toFigmaHeight(18.sp)),
                      ),
                      SizedBox(height: 30.h, child: TextFormField()),
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
                              keyboardType: val.getValue == 'phone'
                                  ? TextInputType.number
                                  : TextInputType.emailAddress,
                            )),
                      ),
                      SizedBox(
                        height: 37.h,
                      ),
                      DropdownButtonFormField(
                        style: TextStyle(fontSize: 18.sp, color: Colors.black),
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
                      CustomButton(buttonText: 'Continue', onPressed: () {}),
                      SizedBox(
                        height: 37.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Already Have an Account?  ',
                            style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 18.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          InkWell(
                            onTap: null,
                            child: Text(
                              'Login',
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
    );
  }
}
