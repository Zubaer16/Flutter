import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_cards.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:intl/intl.dart';
import 'package:sutraq/storage/font_storage.dart';

class AddNewCardBankAccount extends StatefulWidget {
  const AddNewCardBankAccount({super.key});

  @override
  State<AddNewCardBankAccount> createState() => _AddNewCardBankAccountState();
}

class _AddNewCardBankAccountState extends State<AddNewCardBankAccount> {
  final dateController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => {
        FocusScope.of(context).unfocus(),
      },
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffE5E5E5),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ).r,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Add New Bank Card',
                      style: TextStyle(
                          color: const Color(0xff08083d),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          height: 1.4,
                          fontFamily: gelion),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20).r,
                  child: CustomCircleButton(onPressed: () => {Get.back()}),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
              ).r,
              child: SizedBox(
                  // height: 32.h,
                  width: 214.w,
                  child: Text(
                    'Ensure to fill in the neccessary \n details of the recipient in order to \n continue',
                    style: TextStyle(
                        color: const Color(0xff000000).withOpacity(0.5),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.6,
                        fontFamily: circularStd),
                    textAlign: TextAlign.center,
                  )),
            ),
            SizedBox(
              height: 131.h,
            ),
            Container(
              height: 413.h,
              width: 344.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(const Radius.circular(10).r)),
              child: Stack(clipBehavior: Clip.none, children: [
                Positioned(
                    left: 37.w,
                    top: -75.h,
                    child: const CustomCards(dots: false)),
                Positioned(
                    top: 91.h,
                    child: SizedBox(
                      width: 344.w,
                      child: Column(
                        children: [
                          CustomInput(
                            labelText: 'Card Number',
                            isPrefixIcon: false,
                            isPrefixIconImage: false,
                            isSuffixIcon: false,
                            placeholder: false,
                            width: 307.w,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          SizedBox(
                            width: 307.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 150.w,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 9).r,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Expiry Date',
                                              style: TextStyle(
                                                  color: lightBalckColor,
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: circularStd),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 57.h,
                                        child: TextFormField(
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: circularStd),
                                          readOnly: true,
                                          controller: dateController,
                                          onTap: () async {
                                            DateTime? pickDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime
                                                        .now(), //get today's date
                                                    firstDate: DateTime
                                                        .now(), //DateTime.now() - not to allow to choose before today.
                                                    lastDate: DateTime(2101));
                                            if (pickDate != null) {
                                              setState(() {
                                                String dateFormat =
                                                    DateFormat('dd-MM-yyyy')
                                                        .format(pickDate)
                                                        .toString();
                                                dateController.text =
                                                    dateFormat;
                                              });
                                            }
                                          },
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Color(0xFFC5C5C5))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: focusBlueColor))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomInput(
                                  width: 150.w,
                                  isPrefixIcon: false,
                                  isPrefixIconImage: false,
                                  isSuffixIcon: false,
                                  placeholder: false,
                                  labelText: 'CVV',
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 34.h,
                          ),
                          CustomButton(
                            onPressed: () => {},
                            buttonHeight: 61.h,
                            buttonWidth: 307.w,
                            buttonText: 'CONFIRM',
                            buttonColor: greenColor,
                            buttonFontSize: 16.sp,
                            buttonTextWeight: FontWeight.w500,
                          )
                        ],
                      ),
                    ))
              ]),
            )
          ]),
        ),
      ),
    ));
  }
}
