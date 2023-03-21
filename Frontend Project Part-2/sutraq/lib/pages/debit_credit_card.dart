import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/debit_credit_card_radio.dart';
import 'package:sutraq/provider/debit_credit_card_radio_provider.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

import '../components/custom_circle_button.dart';

class DebitCreditCard extends StatelessWidget {
  const DebitCreditCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xfff1f3f4),
            body: Column(
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
                          'Credit/Debit Cards',
                          style: TextStyle(
                              color: const Color(0xff08083d),
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              height: 1.4.h,
                              fontFamily: gelion),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ).r,
                      child: CustomCircleButton(onPressed: () => {Get.back()}),
                    ),
                  ],
                ),
                SizedBox(
                  height: 59.h,
                ),
                Container(
                  width: 339.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)).r),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Consumer<DebitCreditCardRadioProvider>(
                          builder: (context, value, child) =>
                              DebitCredidCardRadio(
                            onChanged: (e) => {value.changeValue(e)},
                            value: '1st Card',
                            groupValue: value.radioValue,
                            isDot: value.radioValue != '1st Card',
                          ),
                        ),
                        Consumer<DebitCreditCardRadioProvider>(
                          builder: (context, value, child) =>
                              DebitCredidCardRadio(
                            onChanged: (e) => {value.changeValue(e)},
                            value: '2nd Card',
                            groupValue: value.radioValue,
                            isDot: value.radioValue != '2nd Card',
                            cardColor: const Color(0xff330693),
                          ),
                        ),
                        CustomButton(
                          onPressed: () =>
                              {Get.toNamed(add_new_card_bank_account)},
                          buttonWidth: 300.w,
                          buttonHeight: 61.h,
                          buttonColor: greenColor,
                          buttonText: 'Add New'.toUpperCase(),
                          buttonFontSize: 16.sp,
                          buttonTextWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 42.h,
                        )
                      ],
                    ),
                  ]),
                ),
              ],
            )));
  }
}
