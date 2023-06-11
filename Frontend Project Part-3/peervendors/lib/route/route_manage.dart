import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:peervendors/views/pages/splash_screen.dart';
import 'package:peervendors/views/pages/walkthrough_screen.dart';

const String splashScreen = '/splashScreen';
const String walkthroughScreen = '/walkthroughScreen';

List<GetPage> getPages = [
  GetPage(name: splashScreen, page: () => const SplashScreen()),
  GetPage(name: walkthroughScreen, page: () => const WalkthroughScreen())
];
