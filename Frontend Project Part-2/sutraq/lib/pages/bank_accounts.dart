import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sutraq/components/bank_account_radio.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/provider/bank_account_radio_provider.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';

import '../components/custom_circle_button.dart';

class BankAccounts extends StatelessWidget {
  const BankAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    final radioProvider =
        Provider.of<BankAccountRadioProvider>(context, listen: false);

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
                          'Bank Accounts',
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
                      child: CustomCircleButton(
                          onPressed: () =>
                              {Get.back(), radioProvider.changeValue('')}),
                    ),
                  ],
                ),
                SizedBox(
                  height: 59.h,
                ),
                Container(
                  width: 339.w,
                  height: 509.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)).r),
                  child: Stack(clipBehavior: Clip.none, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18).r,
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 18.88).r,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Check the radio button to set bank\nas default',
                                  style: TextStyle(
                                      color: const Color(0xff000000)
                                          .withOpacity(0.5),
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      height: 1.6,
                                      fontFamily: circularStd),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Consumer<BankAccountRadioProvider>(
                              builder: (context, value, child) =>
                                  BankAccountRadio(
                                value: 'one',
                                groupValue: radioProvider.radioValue,
                                onChanged: (value) {
                                  radioProvider.changeValue(value);
                                },
                              ),
                            ),
                            Consumer<BankAccountRadioProvider>(
                              builder: (context, value, child) =>
                                  BankAccountRadio(
                                value: 'two',
                                groupValue: radioProvider.radioValue,
                                onChanged: (value) {
                                  radioProvider.changeValue(value);
                                },
                              ),
                            ),
                            Consumer<BankAccountRadioProvider>(
                              builder: (context, value, child) =>
                                  BankAccountRadio(
                                value: 'three',
                                groupValue: radioProvider.radioValue,
                                onChanged: (value) {
                                  radioProvider.changeValue(value);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 38.h,
                            ),
                            CustomButton(
                              onPressed: () =>
                                  {Get.toNamed(add_new_bank_account)},
                              buttonWidth: 300.w,
                              buttonHeight: 61.h,
                              buttonColor: greenColor,
                              buttonText: 'Add New'.toUpperCase(),
                              buttonFontSize: 16.sp,
                              buttonTextWeight: FontWeight.w500,
                            ),
                            Text(radioProvider.myValues)
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            )));
  }
}
