import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';

class AddNewBankTransferAccount extends StatelessWidget {
  const AddNewBankTransferAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => {FocusScope.of(context).unfocus()},
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ).r,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Add New Account',
                            style: TextStyle(
                                color: const Color(0xff08083d),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                height: 1.4),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 10).r,
                        child:
                            CustomCircleButton(onPressed: () => {Get.back()}),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ).r,
                    child: SizedBox(
                        // height: 32.h,
                        width: 214.w,
                        child: Text(
                          'Ensure to fill in the neccessary details of the recipient in order to continue',
                          style: TextStyle(
                              color: Color(0xff000000).withOpacity(0.5),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.6),
                          textAlign: TextAlign.center,
                        )),
                  ),
                  SizedBox(
                    height: 85.h,
                  ),
                  CustomDropdown(
                      widht: 302.w,
                      labelText: 'Currency',
                      textButtonVisible: false,
                      textButtonOnpressed: () => {},
                      isPrefixIcon: false,
                      isPrefixIconImage: false),
                  SizedBox(
                    height: 37.h,
                  ),
                  CustomButton(
                    onPressed: () => {},
                    buttonColor: greenColor,
                    buttonText: 'CONFIRM',
                    buttonFontSize: 16.sp,
                    buttonHeight: 61.h,
                    buttonWidth: 302.w,
                    buttonTextWeight: FontWeight.w500,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
