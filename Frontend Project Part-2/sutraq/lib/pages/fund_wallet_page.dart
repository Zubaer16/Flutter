import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/components/custom_dropdown.dart';
import 'package:sutraq/components/dashboard_dialog.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';

class FundWallet extends StatelessWidget {
  FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    myFunction() {}
    return SafeArea(
        child: Scaffold(
            body: CustomDropdown(
      buttonTextFuntion: () => {},
    )));
  }
}
