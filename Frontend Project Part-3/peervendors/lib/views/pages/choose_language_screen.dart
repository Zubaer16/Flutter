import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/language_radio_provider.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/language_radio.dart';
import 'package:provider/provider.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return false;
      },
      child: SafeArea(
        child: Scaffold(
            backgroundColor: whiteF4F5F7,
            body: Align(
              alignment: Alignment.center,
              child: Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 291.h,
                  width: 324.w,
                  decoration: BoxDecoration(
                      color: pinkFF7465,
                      borderRadius: BorderRadius.circular(10).r,
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.15),
                            blurRadius: 2,
                            offset: const Offset(0, 2))
                      ]),
                  child: Column(children: [
                    SizedBox(
                      height: 54.h,
                    ),
                    Text(
                      'Choose Your Language',
                      style: TextStyle(
                        color: whiteFFFFFF,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        height: 30.0.toFigmaHeight(20.sp),
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, bottom: 18).r,
                      child: Consumer<LanguageRadioProvider>(
                        builder: (context, val, child) => LanguageRadio(
                          value: 'English',
                          groupValue: val.radioValue,
                          onChanged: (e) => {
                            val.changeValue = e,
                            Get.toNamed(onboardingScreen)
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, bottom: 18).r,
                      child: Consumer<LanguageRadioProvider>(
                        builder: (context, val, child) => LanguageRadio(
                          value: 'Kiswahili',
                          groupValue: val.radioValue,
                          onChanged: (e) => {
                            val.changeValue = e,
                            Get.toNamed(onboardingScreen)
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 48, bottom: 18).r,
                      child: Consumer<LanguageRadioProvider>(
                        builder: (context, val, child) => LanguageRadio(
                          value: 'Francais',
                          groupValue: val.radioValue,
                          onChanged: (e) => {
                            val.changeValue = e,
                            Get.toNamed(onboardingScreen)
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
                Positioned(
                  left: 100.w,
                  bottom: 255.h,
                  child: Container(
                    height: 124.h,
                    width: 124.w,
                    decoration: const BoxDecoration(
                        color: whiteF4F5F7, shape: BoxShape.circle),
                    child: Center(
                      child: Image.asset(
                        'images/pvLogo.png',
                        height: 101.h,
                        width: 101.w,
                      ),
                    ),
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
