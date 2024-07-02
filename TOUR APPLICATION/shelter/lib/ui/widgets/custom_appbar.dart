import 'package:flutter/material.dart';
import 'package:shelter/ui/styles/styles.dart';

PreferredSizeWidget? customAppBar(String name) {
  return AppBar(
    title: Text(
      name,
      style: AppStyles.textStyleB20400,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: Colors.white,
  );
}
