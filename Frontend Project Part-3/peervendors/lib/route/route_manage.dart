import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:peervendors/views/pages/authentication_screen.dart';
import 'package:peervendors/views/pages/chat_details_screen.dart';
import 'package:peervendors/views/pages/chooseImage_screen.dart';
import 'package:peervendors/views/pages/dashboard_screen.dart';
import 'package:peervendors/views/pages/login_otp_screen.dart';
import 'package:peervendors/views/pages/login_screen.dart';
import 'package:peervendors/views/pages/onboarding_screen.dart';
import 'package:peervendors/views/pages/product_details_screen.dart';
import 'package:peervendors/views/pages/register_otp_screen.dart';
import 'package:peervendors/views/pages/register_screen.dart';
import 'package:peervendors/views/pages/splash_screen.dart';
import 'package:peervendors/views/pages/choose_language_screen.dart';
import 'package:peervendors/views/pages/subCategory_screen.dart';
import 'package:peervendors/views/pages/success_choose_image.dart';
import 'package:peervendors/views/pages/success_login.dart';
import 'package:peervendors/views/pages/success_registration.dart';
import 'package:peervendors/views/pages/test.dart';

const String splashScreen = '/splashScreen';
const String chooseLanguageScreen = '/chooseLanguageScreen';
const String onboardingScreen = '/onboardingScreen';
const String authenticationScreen = '/authenticationScreen';
const String registerScreen = '/registerScreen';
const String registerOtpScreen = '/registerOtpScreen';
const String successRegistration = '/successRegistration';
const String loginScreen = '/loginScreen';
const String loginOtpScreen = '/loginOtpScreen';
const String successLogin = '/successLogin';
const String dashboardScreen = '/dashboardScreen';
const String subCategoryScreen = '/subCategoryScreen';
const String productDetailsScreen = '/productDetailsScreen';
const String chooseImageScreen = '/chooseImageScreen';
const String test = '/test';
const String successChooseImage = '/successChooseImage';
const String chatDetailsScreen = '/chatDetailsScreen';

List<GetPage> getPages = [
  GetPage(name: splashScreen, page: () => const SplashScreen()),
  GetPage(name: chooseLanguageScreen, page: () => const ChooseLanguageScreen()),
  GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
  GetPage(name: authenticationScreen, page: () => const AuthenticationScreen()),
  GetPage(name: registerScreen, page: () => const RegisterScreen()),
  GetPage(name: registerOtpScreen, page: () => const RegisterOtpScreen()),
  GetPage(name: successRegistration, page: () => const SuccessRegistration()),
  GetPage(name: loginScreen, page: () => const LoginScreen()),
  GetPage(name: loginOtpScreen, page: () => const LoginOtpScreen()),
  GetPage(name: successLogin, page: () => const SuccessLogin()),
  GetPage(name: dashboardScreen, page: () => const DashboardScreen()),
  GetPage(name: subCategoryScreen, page: () => const SubCategoryScreen()),
  GetPage(name: productDetailsScreen, page: () => const ProductDetailsScreen()),
  GetPage(name: chooseImageScreen, page: () => const ChooseImageScreen()),
  GetPage(name: successChooseImage, page: () => const SuccessChooseImage()),
  GetPage(name: test, page: () => const Test()),
  GetPage(name: chatDetailsScreen, page: () => const ChatDetailsScreen()),
];
