import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

Widget navHomeCategories(bool circlePic, String link, String category,
    void Function()? onPressed, void Function()? onTap) {
  return SizedBox(
    child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 37, right: 37).r,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(category, style: AppStyles.textStyleB16500),
                  TextButton(
                      onPressed: onPressed,
                      child: Text('See All', style: AppStyles.textStyleG14500))
                ])),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0).r,
                  child: InkWell(
                    onTap: onTap,
                    child: Container(
                        height: 120.h,
                        width: 92.w,
                        decoration: BoxDecoration(
                            shape: circlePic == true
                                ? BoxShape.circle
                                : BoxShape.rectangle,
                            borderRadius: circlePic == false
                                ? BorderRadius.circular(15).r
                                : null,
                            image: DecorationImage(
                                image: AssetImage(link), fit: BoxFit.cover))),
                  ),
                );
              }),
        )
      ],
    ),
  );
}
