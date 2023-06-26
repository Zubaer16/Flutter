import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/email_phone_button_provider.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:provider/provider.dart';

import '../../storage/color_storage.dart';

class EmailPhoneButton extends StatelessWidget {
  const EmailPhoneButton({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> stackButton = [
      Consumer<EmailPhoneButtonProvider>(
        builder: (context, val, child) => Positioned(
            left: 95.w,
            child: ElevatedButton(
              onPressed: () {
                val.setValue = 'email';
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  minimumSize: Size.zero,
                  foregroundColor:
                      val.getValue == 'email' ? blue5364F4 : whiteC4C4C4,
                  backgroundColor:
                      val.getValue == 'email' ? blue5364F4 : whiteC4C4C4,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10)).r)),
              child: Padding(
                padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 3, bottom: 3)
                    .r,
                child: Text(
                  'E-mail',
                  style: TextStyle(
                    color: whiteF4F5F7,
                    fontSize: 20.sp,
                    fontFamily: poppins,
                    fontWeight: FontWeight.w500,
                    height: 30.0.toFigmaHeight(20.sp),
                  ),
                ),
              ),
            )),
      ),
      Consumer<EmailPhoneButtonProvider>(
        builder: (context, val, child) => ElevatedButton(
          onPressed: () {
            val.setValue = 'phone';
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize: Size.zero,
              backgroundColor:
                  val.getValue == 'phone' ? blue5364F4 : whiteC4C4C4,
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(10)).r)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 3, bottom: 3).r,
            child: Text(
              'Phone',
              style: TextStyle(
                color: whiteF4F5F7,
                fontSize: 20.sp,
                fontFamily: poppins,
                fontWeight: FontWeight.w500,
                height: 30.0.toFigmaHeight(20.sp),
              ),
            ),
          ),
        ),
      ),
    ];
    int arrValue1 = 0;
    int arrValue2 = 1;
    return Center(
      child: SizedBox(
        width: 210.w,
        child: Consumer<EmailPhoneButtonProvider>(
          builder: (context, val, child) => Stack(
            children: [
              stackButton[val.getValue == 'phone' ? arrValue1 : arrValue2],
              stackButton[val.getValue == 'phone' ? arrValue2 : arrValue1]
            ],
          ),
        ),
      ),
    );
  }
}
