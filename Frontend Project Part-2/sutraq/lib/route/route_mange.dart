// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sutraq/pages/add_new_bank_account.dart';
import 'package:sutraq/pages/add_new_bank_transfer_account.dart';
import 'package:sutraq/pages/bank_transfer.dart';
import 'package:sutraq/pages/cards_page.dart';
import 'package:sutraq/pages/check_inbox.dart';
import 'package:sutraq/pages/dashboard_page.dart';
import 'package:sutraq/pages/dashboard_screen.dart';
import 'package:sutraq/pages/forgot_password_screen.dart';
import 'package:sutraq/pages/fund_wallet_page.dart';
import 'package:sutraq/pages/login_tip.dart';
import 'package:sutraq/pages/notifications_screen.dart';
import 'package:sutraq/pages/send_money.dart';
import 'package:sutraq/pages/settings_page.dart';
import 'package:sutraq/pages/sutraq_transfer.dart';
import 'package:sutraq/pages/transfer_summery.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/pages/welcome_back_screen.dart';
import 'package:sutraq/pages/walkthrough_screen.dart';
import 'package:sutraq/pages/splash_screen.dart';

const String splash_screen = '/splash_screen';
const String walkthrough_screen = '/walkthrough_screen';
const String welcome_back_screen = '/welcome_back_screen';
const String forgot_password_screen = '/forgot_password_screen';
const String check_inbox_screen = '/check_inbox_screen';
const String login_tip_screen = '/login_tip_screen';
const String dashboard_screen = '/dashboard_screen';
const String dashboard_page = '/dashboard_page';
const String wallet_page = '/wallet_page';
const String cards_page = '/cards_page';
const String settings_page = '/settings_page';
const String notification_screen = '/notification_screen';
const String fund_wallet_page = '/fund_wallet_page';
const String add_new_bank_account = '/add_new_bank_account';
const String send_money = '/send_money';
const String bank_transfer = '/bank_transfer';
const String sutraq_transfer = '/sutraq_transfer';
const String add_new_bank_transfer_account = '/add_new_bank_transfer_account';
const String transfer_summery = '/transfer_summery';

List<GetPage> getPages = [
  GetPage(
    name: splash_screen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: walkthrough_screen,
    page: () => WalkthroughScreen(),
    transition: Transition.rightToLeft,
  ),
  GetPage(
      name: welcome_back_screen,
      page: () => const WelcomeBackScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: forgot_password_screen,
      page: () => const ForgotPasswordScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: check_inbox_screen,
      page: () => const CheckInboxScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: login_tip_screen,
      page: () => const LoginTipScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: dashboard_screen,
      page: () => DashboardScreen(),
      transition: Transition.rightToLeft),
  GetPage(
      name: dashboard_page,
      page: () => const DashboardPage(),
      transition: Transition.rightToLeft),
  GetPage(
    name: wallet_page,
    page: () => const WalletPage(),
  ),
  GetPage(
      name: cards_page,
      page: () => const CardsPage(),
      transition: Transition.rightToLeft),
  GetPage(
      name: settings_page,
      page: () => const SettingsPage(),
      transition: Transition.rightToLeft),
  GetPage(
    name: notification_screen,
    page: () => const NotificationScreen(),
  ),
  GetPage(name: fund_wallet_page, page: () => const FundWalletPage()),
  GetPage(name: add_new_bank_account, page: () => const AddNewBankAccount()),
  GetPage(name: send_money, page: () => const SendMoney()),
  GetPage(name: bank_transfer, page: () => const BankTransfer()),
  GetPage(name: sutraq_transfer, page: () => const SutraqTransfer()),
  GetPage(
      name: add_new_bank_transfer_account,
      page: () => const AddNewBankTransferAccount()),
  GetPage(name: transfer_summery, page: () => const TransferSummery()),
];
