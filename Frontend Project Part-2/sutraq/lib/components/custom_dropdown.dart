import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class CustomDropdown extends StatelessWidget {
  final double? widht;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final String? labelText;
  final bool textButtonVisible;
  final Function() textButtonOnpressed;
  final bool isPrefixIcon;
  final bool isPrefixIconImage;
  final String? prefixIconImageAsset;
  final IconData? prefixIcon;

  const CustomDropdown({
    Key? key,
    this.widht,
    this.topPadding,
    this.bottomPadding,
    this.leftPadding,
    this.rightPadding,
    this.labelText,
    required this.textButtonVisible,
    required this.textButtonOnpressed,
    required this.isPrefixIcon,
    required this.isPrefixIconImage,
    this.prefixIconImageAsset,
    this.prefixIcon,
  }) : super(key: key);

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
        width: widht,
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
                  if (textButtonVisible == true)
                    TextButton(
                        onPressed: textButtonOnpressed,
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero),
                        child: Text(
                          '+ Add New',
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w400),
                        )),
                ],
              ),
            ),
            SizedBox(
              height: 57.h,
              child: DropdownButtonFormField(
                iconSize: 0,
                items: ['one', 'two', 'three']
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15.71).r,
                      child: const Icon(
                        expandMore,
                        color: greenColor,
                      ),
                    ),
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
            )
          ],
        ),
      ),
    );
  }
}
