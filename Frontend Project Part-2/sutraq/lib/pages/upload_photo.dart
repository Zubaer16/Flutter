import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_button.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 33.h,
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            'Upload Photo',
            style: TextStyle(
                color: Color(0xff08083D),
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                fontFamily: gelion),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            'Upload a photo of yourself. A picture showing \n your face properly is recommended',
            style: TextStyle(
                color: Color(0xff000000).withOpacity(.5),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                fontFamily: circularStd),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 59.h,
          ),
          Container(
            height: 524.h,
            width: 344.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10).r)),
            child: Column(children: [
              SizedBox(
                height: 69.h,
              ),
              InkWell(
                onTap: () async {
                  final result = await FilePicker.platform.pickFiles(
                    allowMultiple: true,
                    type: FileType.custom,
                    allowedExtensions: ['png', 'jpeg'],
                  );
                  if (result == null) return;
                },
                child: DottedBorder(
                  dashPattern: [8, 3],
                  color: Color(0xff666666),
                  strokeWidth: 1,
                  strokeCap: StrokeCap.butt,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10).r,
                  child: SizedBox(
                    height: 172.h,
                    width: 203.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 56.h,
                        ),
                        Icon(
                          imageOutlined,
                          size: 38.w,
                          color: Color(0xffdadada),
                        ),
                        SizedBox(
                          height: 19.h,
                        ),
                        Text(
                          'Tap to select photo',
                          style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: circularStd),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Allows png, jpeg formats',
                style: TextStyle(
                    color: Color(0xff000000).withOpacity(.5),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: circularStd),
              ),
              SizedBox(
                height: 120.h,
              ),
              CustomButton(
                onPressed: () => {Get.toNamed(id_upload)},
                buttonColor: greenColor,
                buttonHeight: 61.h,
                buttonWidth: 307.w,
                buttonText: 'Next'.toUpperCase(),
                buttonFontSize: 16.sp,
                buttonTextWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 26.h,
              ),
              Text(
                'Step 1/2',
                style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: circularStd),
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
