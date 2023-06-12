import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:peervendors/views/pages/splash_screen.dart';
import 'package:peervendors/views/pages/choose_language_screen.dart';

const String splashScreen = '/splashScreen';
const String chooseLanguageScreen = '/chooseLanguageScreen';

List<GetPage> getPages = [
  GetPage(name: splashScreen, page: () => const SplashScreen()),
  GetPage(name: chooseLanguageScreen, page: () => const ChooseLanguageScreen())
];
