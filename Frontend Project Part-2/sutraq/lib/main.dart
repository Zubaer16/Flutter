import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sutraq/pages/splash_screen.dart';
import 'package:sutraq/provider/bank_account_radio_provider.dart';
import 'package:sutraq/provider/cards_page_indicator_provider.dart';
import 'package:sutraq/provider/dashboard_page_indicator_provider.dart';
import 'package:sutraq/provider/debit_credit_card_radio_provider.dart';
import 'package:sutraq/provider/page_change_provider.dart';
import 'package:sutraq/provider/switch_provider.dart';
import 'package:sutraq/provider/walkthrough_screen_provider.dart';
import 'package:sutraq/provider/wallet_page_indicator_provider.dart';
import 'package:sutraq/route/route_mange.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => WalkthroughScreenProvider()),
        ChangeNotifierProvider(create: (_) => PageChangeProvider()),
        ChangeNotifierProvider(create: (_) => DashboardPageIndicatorProvider()),
        ChangeNotifierProvider(create: (_) => WalletPageIndicatorProvider()),
        ChangeNotifierProvider(create: (_) => CardsPageIndicatorProvider()),
        ChangeNotifierProvider(create: (_) => SwitchProvider()),
        ChangeNotifierProvider(create: (_) => BankAccountRadioProvider()),
        ChangeNotifierProvider(create: (_) => DebitCreditCardRadioProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
        initialRoute: splash_screen,
        getPages: getPages,
      ),
    );
  }
}
