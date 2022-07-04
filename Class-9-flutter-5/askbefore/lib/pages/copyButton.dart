// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CopyButton extends StatefulWidget {
  const CopyButton({Key? key}) : super(key: key);

  @override
  State<CopyButton> createState() => _CopyButtonState();
}

String _click_copy = 'Click To Copy';

class _CopyButtonState extends State<CopyButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 930.w,
        ),
        OutlinedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(
              0xFF4F7C87,
            )),
            onPressed: () {
              setState(() {
                _click_copy = 'Copied';
              });
            },
            child: Text(
              _click_copy,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ))
      ],
    );
  }
}
