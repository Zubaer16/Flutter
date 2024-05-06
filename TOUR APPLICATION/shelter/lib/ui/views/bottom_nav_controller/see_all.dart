import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/ui/styles/styles.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({super.key, this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brightGray,
      appBar: AppBar(
        title: Text(
          'See all',
          style: AppStyles.textStyleB20400,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
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
            imageUrl!,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
