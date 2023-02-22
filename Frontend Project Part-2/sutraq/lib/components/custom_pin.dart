import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPin extends StatelessWidget {
  const CustomPin({Key? key, required this.inputText, required this.onChanged})
      : super(key: key);

  final String inputText;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300.w,
          child: Text(
            inputText,
            style: TextStyle(
                color: Color(
                  0xff969696,
                ),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Container(
          width: 300.w,
          height: 57.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffc5c5c5)),
              borderRadius: BorderRadius.all(Radius.circular(2).r)),
          child: SizedBox(
            width: 197.w,
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (value) => {onChanged(value)},
              keyboardType: TextInputType.number,
              autoFocus: false,
              showCursor: true,
              cursorColor: Colors.black,
              cursorHeight: 15.h,
              obscureText: true,
              obscuringCharacter: '*',
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.underline,
                  borderRadius: BorderRadius.all(Radius.circular(4).r),
                  fieldWidth: 41.w,
                  fieldHeight: 45.h,
                  activeFillColor: Colors.white,
                  activeColor: Color(0xff000000),
                  inactiveColor: Color(0xff000000),
                  selectedColor: Color(0xff000000)),
            ),
          ),
        ),
      ],
    );
  }
}
