import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:learngetx/home.dart';

import 'package:learngetx/pages/route.dart';
import 'package:learngetx/themes/theme_controller.dart';
import 'package:learngetx/themes/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeController = Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: homeScreen,
      getPages: getPages,
    );
  }
}
