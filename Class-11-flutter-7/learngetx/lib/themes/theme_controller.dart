import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  ThemeMode get theme => _loadTheme() ? ThemeMode.dark : ThemeMode.light;

  bool _loadTheme() => false;

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}
