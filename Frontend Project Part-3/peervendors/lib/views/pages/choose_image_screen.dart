import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/choose_image_provider.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_button.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:image_cropper/image_cropper.dart';

class ChooseImageScreen extends StatelessWidget {
  const ChooseImageScreen({super.key});

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
                            onTap: () {
                              _getPermission(val);
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
                              Wrap(spacing: 18.w, runSpacing: 36.h, children: [
                            ...List.generate(
                                val.getPickedImage.length,
                                (index) => SizedBox(
                                      height: 135.h,
                                      width: 110.5.w,
                                      child: Image.file(
                                        val.getPickedImage[index]!,
                                        fit: BoxFit.fill,
                                      ),
                                    ))
                          ]),
                        ),
                        SizedBox(
                          height: 33.h,
                        ),
                        Center(
                            child: CustomButton(
                                buttonText: 'Continue',
                                onPressed: () {
                                  Get.toNamed(successChooseImage);
                                }))
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}

Future _getPermission(ChooseImageProvider val) async {
  PermissionStatus imagePermission = await Permission.storage.request();
  if (imagePermission == PermissionStatus.granted) {
    _pickCropImage(val);
  }

  if (imagePermission == PermissionStatus.permanentlyDenied) {
    openAppSettings();
  }
}

Future _pickCropImage(ChooseImageProvider val) async {
  final pickedFile = await ImagePicker().pickMultiImage();
  List<XFile> xfilePick = pickedFile;
  if (xfilePick.isNotEmpty) {
    for (var i = 0; i < xfilePick.length; i++) {
      CroppedFile? cropped = await ImageCropper()
          .cropImage(sourcePath: xfilePick[i].path, aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ], uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Crop',
            hideBottomControls: true,
            showCropGrid: false,
            cropGridColor: Colors.black,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(title: 'Crop')
      ]);
      if (cropped != null) {
        xfilePick[i] = XFile(cropped.path);
        val.setPickedImage = File(xfilePick[i].path);
      }
    }
  }
}
