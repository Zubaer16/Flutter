import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Walkthrough_Pic extends StatelessWidget {
  final double? padding_left;
  final double? padding_top;

  final double? container_height;
  final String? stack_1st_image;
  final double? stack_1st_image_top;
  final double? stack_1st_image_height;
  final double? stack_2nd_image_top;
  final double? stack_2nd_image_left;
  final double? stack_2nd_image_height;
  final double? stack_2nd_image_width;
  final String? stack_2nd_image;
  final String? big_text;
  final String? small_text;

  const Walkthrough_Pic(
      {this.padding_left,
      this.padding_top,
      this.container_height,
      required this.stack_1st_image,
      this.stack_1st_image_top,
      this.stack_1st_image_height,
      required this.stack_2nd_image,
      this.stack_2nd_image_top,
      this.stack_2nd_image_left,
      this.stack_2nd_image_height,
      this.stack_2nd_image_width,
      this.big_text,
      this.small_text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: padding_left ?? 0,
            top: padding_top ?? 0,
          ),
          child: Container(
            height: container_height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: stack_1st_image_top,
                  child: Image.asset(
                    '${this.stack_1st_image}',
                    height: stack_1st_image_height,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  top: stack_2nd_image_top,
                  left: stack_2nd_image_left,
                  child: Image.asset(
                    '${this.stack_2nd_image}',
                    height: stack_2nd_image_height,
                    width: stack_2nd_image_width,
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          height: 211,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF62BB46),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 60.h,
                // ),
                Text(
                  '${this.big_text}',
                  //'Send Money Anywhere',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10).r,
                  child: Text(
                    '${this.small_text}',
                    // 'With our unique technology, you can get money anywhere in the world',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ]),
        )
      ],
    );
  }
}
