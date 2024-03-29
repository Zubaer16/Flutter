// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:sutraq/pages/add_new_bank_account.dart';
import 'package:sutraq/pages/add_new_bank_transfer_account.dart';
import 'package:sutraq/pages/add_new_card_bank_account.dart';
import 'package:sutraq/pages/add_new_sutraq_transfer_account.dart';
import 'package:sutraq/pages/bank_accounts.dart';
import 'package:sutraq/pages/bank_transfer.dart';
import 'package:sutraq/pages/cards_page.dart';
import 'package:sutraq/pages/change_password.dart';
import 'package:sutraq/pages/change_pin.dart';
import 'package:sutraq/pages/check_inbox.dart';
import 'package:sutraq/pages/create_sutraq_account.dart';
import 'package:sutraq/pages/dashboard_page.dart';
import 'package:sutraq/pages/dashboard_screen.dart';
import 'package:sutraq/pages/debit_credit_card.dart';
import 'package:sutraq/pages/enter_transaction_pin.dart';
import 'package:sutraq/pages/enter_transaction_pin_sutraq.dart';
import 'package:sutraq/pages/forgot_password_screen.dart';
import 'package:sutraq/pages/fund_wallet_page.dart';
import 'package:sutraq/pages/good.dart';
import 'package:sutraq/pages/id_upload.dart';
import 'package:sutraq/pages/login_tip.dart';
import 'package:sutraq/pages/notifications_screen.dart';
import 'package:sutraq/pages/open_sutraq_account.dart';
import 'package:sutraq/pages/refer_a_friend.dart';
import 'package:sutraq/pages/send_money.dart';
import 'package:sutraq/pages/settings_page.dart';
import 'package:sutraq/pages/sutraq_transfer.dart';
import 'package:sutraq/pages/transaction_success.dart';
import 'package:sutraq/pages/transaction_success_sutraq_transfer.dart';
import 'package:sutraq/pages/transfer_summery.dart';
import 'package:sutraq/pages/upload_photo.dart';
import 'package:sutraq/pages/view_all_transactions.dart';
import 'package:sutraq/pages/view_dashboard.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/pages/welcome_back_screen.dart';
import 'package:sutraq/pages/walkthrough_screen.dart';
import 'package:sutraq/pages/splash_screen.dart';
import 'package:sutraq/pages/withdraw_fund.dart';

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
const String enter_transaction_pin = '/enter_transaction_pin';
const String transaction_success = '/transaction_success';
const String add_new_sutraq_transfer_account =
    '/add_new_sutraq_transfer_account';
const String enter_transaction_pin_sutraq = '/enter_transaction_pin_sutraq';
const String transaction_success_sutraq_transfer =
    '/transaction_success_sutraq_transfer';
const String withdraw_fund = '/withdraw_fund';
const String view_all_transactions = '/view_all_transactions';
const String refer_a_freind = '/refer_a_freind';
const String add_new_card_bank_account = '/add_new_card_bank_account';
const String open_sutraq_account = '/open_sutraq_account';
const String create_sutraq_account = '/create_sutraq_account';
const String good = '/good';
const String upload_photo = '/upload_photo';
const String bank_accounts = '/bank_accounts';
const String debit_credit_card = '/debit_credit_card';
const String change_pin = '/change_pin';
const String change_password = '/change_password';
const String id_upload = '/id_upload';
const String view_dashboard = '/view_dashboard';

List<GetPage> getPages = [
  GetPage(
    name: splash_screen,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: walkthrough_screen,
    page: () => const WalkthroughScreen(),
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
  GetPage(name: enter_transaction_pin, page: () => const EnterTransactionPin()),
  GetPage(name: transaction_success, page: () => const TransactionSuccess()),
  GetPage(
      name: add_new_sutraq_transfer_account,
      page: () => const AddNewSutraqTransferAccount()),
  GetPage(
      name: enter_transaction_pin_sutraq,
      page: () => const EnterTransactionPinSutraq()),
  GetPage(
      name: transaction_success_sutraq_transfer,
      page: () => const TransactionSuccessSutraqTransfer()),
  GetPage(name: withdraw_fund, page: () => const WithdrawFund()),
  GetPage(name: view_all_transactions, page: () => const ViewAllTransactions()),
  GetPage(name: refer_a_freind, page: () => const ReferAFriend()),
  GetPage(
      name: add_new_card_bank_account,
      page: () => const AddNewCardBankAccount()),
  GetPage(name: open_sutraq_account, page: () => const OpenSutraqAccount()),
  GetPage(name: create_sutraq_account, page: () => const CreateSutraqAccount()),
  GetPage(name: good, page: () => const Good()),
  GetPage(name: upload_photo, page: () => const UploadPhoto()),
  GetPage(name: bank_accounts, page: () => const BankAccounts()),
  GetPage(name: debit_credit_card, page: () => const DebitCreditCard()),
  GetPage(name: change_pin, page: () => const ChangePin()),
  GetPage(name: change_password, page: () => const ChangePassword()),
  GetPage(name: id_upload, page: () => const IdUpload()),
  GetPage(name: view_dashboard, page: () => const ViewDashboard()),
];
