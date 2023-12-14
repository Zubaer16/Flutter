import 'package:get/get.dart';
import 'package:shelter/ui/views/onboarding_screen.dart';
import 'package:shelter/ui/views/splash_screen.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';

// Control our page route flow

List<GetPage> getPages = [
  GetPage(name: splash, page: () => SplashScreen()),
  GetPage(name: onboarding, page: () => OnboardingScreen())
];
