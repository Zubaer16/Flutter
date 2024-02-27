import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/log_in.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';
import 'package:shelter/ui/views/bottom_nav_controller/nav_controller.dart';
import 'package:shelter/ui/views/onboarding_screen.dart';
import 'package:shelter/ui/views/privacy_policy.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:shelter/ui/views/user_from.dart';
import 'package:shelter/ui/views/verify_email.dart';

const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String logIn = '/log-in-screen';
const String userForm = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String bottomNavController = '/bottom-nav-controller-screen';
const String verifyEmail = '/verify-email-screen';

// Control our page route flow

List<GetPage> getPages = [
  GetPage(name: splash, page: () => const SplashScreen()),
  GetPage(name: onboarding, page: () => const OnboardingScreen()),
  GetPage(name: signUp, page: () => SignUp()),
  GetPage(name: logIn, page: () => LogIn()),
  GetPage(name: userForm, page: () => UserForm()),
  GetPage(name: privacyPolicy, page: () => PrivacyPolicy()),
  GetPage(name: bottomNavController, page: () => const BottomNavController()),
  GetPage(name: verifyEmail, page: () => const VerifyEmail()),
];
