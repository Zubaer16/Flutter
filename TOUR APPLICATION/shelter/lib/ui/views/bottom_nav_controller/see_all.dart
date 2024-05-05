import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // number of items in each row
          mainAxisSpacing: 8.0, // spacing between rows
          crossAxisSpacing: 10.0, // spacing between columns
        ),
        padding: const EdgeInsets.all(8.0).r, // padding around the grid
        itemCount: 10, // total number of items
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/images/navAddItemPic1.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
