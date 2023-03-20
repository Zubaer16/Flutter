import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/components/sutraq_logo.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class CreateSutraqAccount extends StatelessWidget {
  const CreateSutraqAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 26.h,
              ),
              SutraqLogo(
                width: 42.w,
                height: 38.h,
              ),
              SizedBox(
                height: 27.h,
              ),
              Text(
                'Create your Sutraq account & \n start transacting!',
                style: TextStyle(
                    color: Color(0xff08083D),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: gelion),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Enter your details to begin',
                style: TextStyle(
                    color: Color(0xff000000).withOpacity(.5),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: circularStd),
              ),
              SizedBox(
                height: 26.h,
              ),
              CustomDropdown(
                labelText: 'I’m opening this account for',
                widht: 306.w,
                textButtonVisible: false,
                textButtonOnpressed: () => {},
                isPrefixIcon: true,
                isPrefixIconImage: false,
                prefixIcon: personOutlined,
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomInput(
                isPrefixIcon: false,
                isPrefixIconImage: false,
                isSuffixIcon: false,
                placeholder: false,
                width: 306.w,
                labelText: 'First Name',
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomInput(
                isPrefixIcon: false,
                isPrefixIconImage: false,
                isSuffixIcon: false,
                placeholder: false,
                width: 306.w,
                labelText: 'Last Name',
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomInput(
                isPrefixIcon: true,
                prefixIcon: emailIcon,
                isPrefixIconImage: false,
                isSuffixIcon: false,
                placeholder: false,
                width: 306.w,
                labelText: 'Email Adress',
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomInput(
                isPrefixIcon: true,
                prefixIcon: passowrdIcon,
                isPrefixIconImage: false,
                isSuffixIcon: true,
                placeholder: false,
                width: 306.w,
                labelText: 'Create Password',
                inputFieldType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: 307.w,
                child: Text(
                  'Password must have at least 8 letters, a number, capital letter.',
                  style: TextStyle(
                      color: Color(0xff000000).withOpacity(.5),
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: dmSans),
                ),
              ),
              SizedBox(
                height: 17.h,
              ),
              CustomDropdown(
                widht: 307.w,
                textButtonVisible: false,
                textButtonOnpressed: () => {},
                isPrefixIcon: true,
                prefixIcon: locationOnOutlined,
                isPrefixIconImage: false,
              ),
              SizedBox(
                height: 26.h,
              ),
              CustomButton(
                onPressed: () => {Get.toNamed(good)},
                buttonText: 'Register'.toUpperCase(),
                buttonWidth: 307.w,
                buttonHeight: 61.w,
                buttonTextWeight: FontWeight.w500,
                buttonFontSize: 16.sp,
                buttonColor: greenColor,
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 307.w,
                child: Text(
                  'By signing up, you agree to our Terms of Use and \n Privacy Policy',
                  style: TextStyle(
                      color: Color(0xff000000).withOpacity(.3),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: dmSans),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
