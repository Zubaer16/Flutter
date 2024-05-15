import 'package:flutter/material.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/ui/styles/styles.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Details',
            style: AppStyles.textStyleB20400,
          ),
          Icon(AppIcons.favoriteOutline)
        ],
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
    ));
  }
}
