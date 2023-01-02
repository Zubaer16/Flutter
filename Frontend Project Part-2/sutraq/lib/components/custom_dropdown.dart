import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class CustomDropdown extends StatelessWidget {
  final String? labelText;
  final VoidCallback? buttonTextFuntion;

  const CustomDropdown(
      {Key? key, this.labelText, required this.buttonTextFuntion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25).r,
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  labelText ?? 'Select Your Account',
                  style: TextStyle(
                      color: lightBalckColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '+ Add New',
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
            Text('hi')
            // DropdownButtonFormField(
            //   iconSize: 0,
            //   items: ['one', 'two', 'three']
            //       .map((e) => DropdownMenuItem(
            //             child: Text(e),
            //             value: e,
            //           ))
            //       .toList(),
            //   onChanged: (val) => {},
            //   decoration: InputDecoration(
            //       suffixIcon: Padding(
            //         padding: const EdgeInsets.only(right: 15.71).r,
            //         child: const Icon(
            //           eyeIcon,
            //           color: Color(0xFFC5C5C5),
            //         ),
            //       ),
            //       prefixIcon: Padding(
            //         padding: const EdgeInsets.only(left: 15, right: 22).r,
            //         child: const Icon(
            //           passowrdIcon,
            //           color: greenColor,
            //         ),
            //       ),
            //       border: const OutlineInputBorder(
            //           borderSide: BorderSide(color: Color(0xFFC5C5C5))),
            //       focusedBorder: const OutlineInputBorder(
            //           borderSide: BorderSide(color: focusBlueColor))),
            // )
          ],
        ),
      ),
    );
  }
}
