// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sutraq/pages/check_inbox.dart';
import 'package:sutraq/pages/forgot_password_screen.dart';
import 'package:sutraq/pages/welcome_back_screen.dart';
import 'package:sutraq/pages/walkthrough_screen.dart';
import 'package:sutraq/pages/splash_screen.dart';

const String splash_screen = '/splash_screen';
const String walkthrough_screen = '/walkthrough_screen';
const String welcome_back_screen = '/welcome_back_screen';
const String forgot_password_screen = '/forgot_password_screen';
const String check_inbox_screen = '/check_inbox_screen';

List<GetPage> getPages = [
  GetPage(
    name: splash_screen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: walkthrough_screen,
    page: () => WalkthroughScreen(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
      name: welcome_back_screen,
      page: () => const WelcomeBackScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: forgot_password_screen,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: check_inbox_screen,
      page: () => const CheckInboxScreen(),
      transition: Transition.rightToLeft),
];
