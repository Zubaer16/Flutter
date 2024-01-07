import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/logIn.dart';
import 'package:shelter/ui/views/auth/signUp.dart';
import 'package:shelter/ui/views/onboarding_screen.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:shelter/ui/views/user_from.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String logIn = '/log-in-screen';
const String userForm = '/user-form-screen';

// Control our page route flow

List<GetPage> getPages = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onboarding, page: () => const OnboardingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: logIn, page: () => LogIn()),
  GetPage(name: userForm, page: () => UserForm()),
];
