import 'package:flutter/material.dart';

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

  const Walkthrough_Pic({
    this.padding_left,
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
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: padding_left ?? 0, top: padding_top ?? 0),
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
      ],
    );
  }
}
