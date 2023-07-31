import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:peervendors/provider/chooseImage_provider.dart';
import 'package:peervendors/provider/email_phone_button_provider.dart';
import 'package:peervendors/provider/language_radio_provider.dart';
import 'package:peervendors/provider/onboarding_screen_provider.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/views/pages/dashboard_screen.dart';
import 'package:peervendors/views/pages/splash_screen.dart';
import 'package:peervendors/views/pages/test.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => LanguageRadioProvider()),
      ChangeNotifierProvider(create: (_) => OnboardingScreenProvider()),
      ChangeNotifierProvider(create: (_) => EmailPhoneButtonProvider()),
      ChangeNotifierProvider(create: (_) => ChooseImageProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => GetMaterialApp(
        title: 'Peer Vendors',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashboardScreen(),
        initialRoute: dashboardScreen,
        getPages: getPages,
      ),
    );
  }
}
