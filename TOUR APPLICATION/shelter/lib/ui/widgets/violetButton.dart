import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_colors.dart';

class VioletButton extends StatelessWidget {
  VioletButton({super.key, required this.title});
  final String title;
  final RxBool _value = false.obs;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _value.value = true;
      },
      child: Obx(
        () => Container(
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.violet,
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
            ),
            child: _value.value == false
                ? Center(
                    child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500),
                  ))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Please Wait',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SizedBox(
                        height: 20.h,
                        width: 20.w,
                        child: CircularProgressIndicator(
                          strokeWidth: 1.w,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
      ),
    );
  }
}
