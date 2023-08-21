import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(
      {super.key, required this.message, required this.messageStatus});
  final String message;
  final String messageStatus;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          messageStatus == 'sender' ? Alignment.topLeft : Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.r),
        child: Container(
          constraints: BoxConstraints(maxWidth: 280.w),
          padding:
              EdgeInsets.only(top: 10.r, bottom: 10.r, left: 15.r, right: 15.r),
          decoration: BoxDecoration(
              color: messageStatus == 'sender' ? black616263 : black272A35,
              borderRadius: BorderRadius.all(Radius.circular(20.r))),
          child: Text(
            message,
            textAlign:
                messageStatus == 'sender' ? TextAlign.left : TextAlign.right,
            style: TextStyle(
                color: whiteFFFFFF,
                fontSize: 13.sp,
                fontFamily: roboto,
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
                height: 15.23.toFigmaHeight(13.sp)),
          ),
        ),
      ),
    );
  }
}
