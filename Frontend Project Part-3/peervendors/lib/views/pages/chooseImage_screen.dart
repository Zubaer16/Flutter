import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/chooseImage_provider.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';

class ChooseImageScreen extends StatelessWidget {
  const ChooseImageScreen({super.key});

  @override
  Future<PermissionStatus> requestPhotosPermission() async {
    return await Permission.photos.request();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteF4F5F7,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                color: whiteFFFFFF,
                child: Center(
                  child: Text(
                    'Choose Images',
                    style: TextStyle(
                        color: black3A2F2F,
                        fontSize: 22.sp,
                        fontFamily: poppins,
                        fontWeight: FontWeight.w500,
                        height: 33.0.toFigmaHeight(22.sp)),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 32, right: 32).r,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 31.h,
                          width: MediaQuery.of(context).size.width,
                        ),
                        Text(
                          'Add 1 or more images',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 20.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w400,
                              height: 30.0.toFigmaHeight(20.sp)),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'For best result provide a square picture. Do not reduce the width of the picture in  the cropping tools and do not increase the height of the picture in the cropping \ntool. ',
                                style: TextStyle(
                                    color: black3A2F2F,
                                    fontSize: 13.sp,
                                    fontFamily: poppins,
                                    fontWeight: FontWeight.w300,
                                    height: 19.5.toFigmaHeight(13.sp)),
                              ),
                              TextSpan(
                                text: 'Need Help?',
                                style: TextStyle(
                                    color: blue00A3FF,
                                    fontSize: 13.sp,
                                    fontFamily: poppins,
                                    fontWeight: FontWeight.w500,
                                    height: 19.5.toFigmaHeight(13.sp)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 43.h,
                        ),
                        Consumer<ChooseImageProvider>(
                          builder: (context, val, child) => GestureDetector(
                            onTap: () async {
                              if (await Permission.location
                                  .request()
                                  .isGranted) {
                                // Either the permission was already granted before or the user just granted it.
                                print("Location Permission is granted");
                              } else {
                                print("Location Permission is denied.");
                              }
                              // final pickedFile =
                              //     await ImagePicker().pickMultiImage();
                              // List<XFile> xfilePick = pickedFile;
                              // if (xfilePick.isNotEmpty) {
                              //   for (var i = 0; i < xfilePick.length; i++) {
                              //     val.setPickedImage = File(xfilePick[i].path);
                              //   }
                              // }
                            },
                            child: Container(
                              height: 75.h,
                              width: 75.w,
                              decoration: BoxDecoration(
                                  color: whiteFFFFFF,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(6))
                                          .r,
                                  boxShadow: [
                                    BoxShadow(
                                        color: whiteFFFFFF,
                                        blurRadius: 4.r,
                                        offset: const Offset(0, 2),
                                        spreadRadius: 0),
                                  ]),
                              child: Center(
                                  child: Image.asset(
                                'images/add_plus.png',
                                height: 35.h,
                                width: 35.w,
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Consumer<ChooseImageProvider>(
                          builder: (context, val, child) =>
                              Wrap(runSpacing: 20.h, children: [
                            ...List.generate(
                                val.getPickedImage.length,
                                (index) => SizedBox(
                                    height: 135.h,
                                    width: 117.5.w,
                                    child:
                                        Image.file(val.getPickedImage[index]!)))
                          ]),
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        Center(
                            child: CustomButton(
                                buttonText: 'Continue', onPressed: () {}))
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
