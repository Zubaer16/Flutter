import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/custom_text_field.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class UploadScreen extends StatelessWidget {
  UploadScreen({super.key});
  final Rx<DateTime> selectedDate = DateTime.now().obs;
  final Rx<TextEditingController> _dateController = TextEditingController().obs;

  Future<void> _selectDate(BuildContext context) async {
    final selected = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));

    if (selected != null && selected != selectedDate.value) {
      _dateController.value.text =
          '${selected.day}-${selected.month}-${selected.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    RxList showImage = [].obs;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 60.h,
          ),
          customTextField('Phone Number', null),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Destination Date & Time',
                style: AppStyles.textStyleB18500,
              ),
              Obx(
                () => Container(
                  decoration: BoxDecoration(
                      color: AppColors.brightGray1,
                      borderRadius:
                          BorderRadius.all(const Radius.circular(7).r)),
                  child: TextField(
                    onTap: () => _selectDate(context),
                    controller: _dateController.value,
                    readOnly: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(left: 20).r),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
          Stack(
            children: [
              customTextField('Choose Images', true, maxLines: 4),
              Positioned.fill(
                child: SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0).r,
                    child: InkWell(
                      onTap: () async {
                        final List<XFile?> image =
                            await ImagePicker().pickMultiImage();

                        showImage.value = List.from(image);
                      },
                      child: Icon(
                        AppIcons.addCircle,
                        color: Colors.blue,
                        size: 60.r,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Obx(() => showImage.isEmpty
              ? SizedBox(
                  height: 170.h,
                )
              : SizedBox(
                  height: 170.h,
                  child: ListView.builder(
                    itemCount: showImage.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0).r,
                        child: Image.file(
                          File(showImage[index].path),
                          fit: BoxFit.cover,
                          height: 170.h,
                          width: 150.w,
                        ),
                      );
                    },
                  ),
                )),
          SizedBox(
            height: 30.h,
          ),
          VioletButton(
              title: 'Upload',
              onAction: () {
                ButtonLoadingState.uploadValue.value = true;
              },
              value: ButtonLoadingState.uploadValue)
        ]),
      ),
    );
  }
}
