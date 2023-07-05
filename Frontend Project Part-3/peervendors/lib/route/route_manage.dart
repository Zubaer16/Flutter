import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:peervendors/views/pages/authentication_screen.dart';
import 'package:peervendors/views/pages/onboarding_screen.dart';
import 'package:peervendors/views/pages/otp_screen.dart';
import 'package:peervendors/views/pages/register_screen.dart';
import 'package:peervendors/views/pages/splash_screen.dart';
import 'package:peervendors/views/pages/choose_language_screen.dart';
import 'package:peervendors/views/pages/success_registration.dart';

const String splashScreen = '/splashScreen';
const String chooseLanguageScreen = '/chooseLanguageScreen';
const String onboardingScreen = '/onboardingScreen';
const String authenticationScreen = '/authenticationScreen';
const String registerScreen = '/registerScreen';
const String otpScreen = '/otpScreen';
const String successRegistration = '/successRegistration';

List<GetPage> getPages = [
  GetPage(name: splashScreen, page: () => const SplashScreen()),
  GetPage(name: chooseLanguageScreen, page: () => const ChooseLanguageScreen()),
  GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
  GetPage(name: authenticationScreen, page: () => const AuthenticationScreen()),
  GetPage(name: registerScreen, page: () => const RegisterScreen()),
  GetPage(name: otpScreen, page: () => const OtpScreen()),
  GetPage(name: successRegistration, page: () => const SuccessRegistration())
];
