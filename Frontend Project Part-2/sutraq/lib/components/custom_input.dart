import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class CustomInput extends StatelessWidget {
  final double? width;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final String? labelText;
  final bool isPrefixIcon;
  final bool isPrefixIconImage;
  final String? prefixIconImageAsset;
  final IconData? prefixIcon;
  final bool isSuffixIcon;
  final TextInputType? inputFieldType;
  final bool placeholder;
  final String? placeholderText;

  const CustomInput(
      {Key? key,
      this.width,
      this.topPadding,
      this.bottomPadding,
      this.leftPadding,
      this.rightPadding,
      this.labelText,
      required this.isPrefixIcon,
      required this.isPrefixIconImage,
      this.prefixIconImageAsset,
      this.prefixIcon,
      required this.isSuffixIcon,
      this.inputFieldType,
      required this.placeholder,
      this.placeholderText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
              top: topPadding ?? 0,
              bottom: bottomPadding ?? 0,
              left: leftPadding ?? 0,
              right: rightPadding ?? 0)
          .r,
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 9).r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    labelText ?? 'Select Your Account',
                    style: TextStyle(
                        color: lightBalckColor,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
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
                    fontWeight: FontWeight.w500),
                keyboardType: inputFieldType,
                obscureText: inputFieldType == TextInputType.visiblePassword,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: placeholder
                        ? placeholderText ?? 'Please Enter Placeholder'
                        : null,
                    hintStyle: TextStyle(
                        color: Color(0xff969696).withOpacity(.5),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.7),
                    suffixIcon: isSuffixIcon
                        ? Padding(
                            padding: const EdgeInsets.only(right: 15.71).r,
                            child: const Icon(
                              eyeIcon,
                              color: Color(0xFFC5C5C5),
                              // size: 30,
                            ),
                          )
                        : null,
                    prefixIcon: isPrefixIcon
                        ? isPrefixIconImage
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 22)
                                        .r,
                                child: ImageIcon(
                                  AssetImage(
                                    prefixIconImageAsset ??
                                        'images/ngnBankIcon.png',
                                  ),
                                  color: greenColor,
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 22)
                                        .r,
                                child: Icon(
                                  prefixIcon,
                                  color: greenColor,
                                ),
                              )
                        : null,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFC5C5C5))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: focusBlueColor))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
