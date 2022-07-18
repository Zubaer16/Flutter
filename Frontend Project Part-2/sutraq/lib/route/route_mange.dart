// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sutraq/pages/walkthrough_screen.dart';
import 'package:sutraq/pages/splash_screen.dart';

const String splash_screen = '/splash_screen';
const String intro_screen = '/intro_screen';

List<GetPage> getPages = [
  GetPage(
    name: splash_screen,
    page: () => Splash_Screen(),
  ),
  GetPage(
    name: intro_screen,
    page: () => Walkthrough_Screen(),
  ),
];
