// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/custom_input.dart';
import 'package:sutraq/components/dashboard_dialog.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 9).r,
          child: CustomDropdown(
            isPrefixIcon: true,
            textButtonVisible: true,
            isPrefixIconImage: true,
            prefixIcon: accountBalance,
          ),
        ),
        CustomInput(
          labelText: 'Please Enter Email',
          isPrefixIcon: false,
          isPrefixIconImage: false,
          prefixIcon: accountBalance,
          isSuffixIcon: false,
          inputFieldType: TextInputType.emailAddress,
          placeholder: true,
          placeholderText: 'Email',
        )
      ],
    )));
  }
}
