import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/log_in.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';
import 'package:shelter/ui/views/drawer_pages/faq.dart';
import 'package:shelter/ui/views/drawer_pages/how_to_use.dart';
import 'package:shelter/ui/views/drawer_pages/privacy.dart';
import 'package:shelter/ui/views/drawer_pages/setting.dart';
import 'package:shelter/ui/views/drawer_pages/support.dart';
import 'package:shelter/ui/views/main_home_screen.dart.dart';
import 'package:shelter/ui/views/onboarding_screen.dart';
import 'package:shelter/ui/views/privacy_policy.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:shelter/ui/views/user_from.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String logIn = '/log-in-screen';
const String userForm = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String mainHomeScreen = '/main-home-screen';
const String supportScreen = '/support-screen';
const String privacyScreen = '/privacy-screen';
const String faqScreen = '/faq-screen';
const String howToUseScreen = '/how-to-use-screen';
const String settingScreen = '/setting-screen';

// Control our page route flow

List<GetPage> getPages = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onboarding, page: () => const OnboardingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: logIn, page: () => LogIn()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
  GetPage(name: mainHomeScreen, page: () => const MainHomeScreen()),
  GetPage(name: supportScreen, page: () => const Support()),
  GetPage(name: privacyScreen, page: () => const Privacy()),
  GetPage(name: faqScreen, page: () => const Faq()),
  GetPage(name: howToUseScreen, page: () => const HowToUse()),
  GetPage(name: settingScreen, page: () => const Setting()),
];
