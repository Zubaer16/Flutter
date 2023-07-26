import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    final List<File> images = [];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: ElevatedButton(onPressed: null, child: Text('pick'))),
          ...List.generate(
              images.length,
              (index) => Container(
                      child: Image.file(
                    images[index],
                    height: 100.h,
                    width: 100.w,
                  )))
        ],
      ),
    );
  }
}
