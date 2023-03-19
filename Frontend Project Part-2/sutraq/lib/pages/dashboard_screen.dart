import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sutraq/pages/cards_page.dart';
import 'package:sutraq/pages/dashboard_page.dart';
import 'package:sutraq/pages/settings_page.dart';
import 'package:sutraq/pages/wallet_page.dart';
import 'package:sutraq/provider/page_change_provider.dart';
import 'package:sutraq/storage/font_storage.dart';

import 'package:sutraq/storage/icon_storage.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  final _pages = [
    const DashboardPage(),
    const WalletPage(),
    const CardsPage(),
    const SettingsPage()
  ];

  // int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pageChangeProvider =
        Provider.of<PageChangeProvider>(context, listen: false);

    return Scaffold(
      bottomNavigationBar: Consumer<PageChangeProvider>(
        builder: (context, value, child) => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF0DBE53),
          unselectedItemColor: const Color(0xFFDADADA),
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(fontFamily: circularStd),
          unselectedLabelStyle: TextStyle(fontFamily: circularStd),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(dashboardIcon),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(icon: Icon(walletIcon), label: 'Wallet'),
            BottomNavigationBarItem(icon: Icon(cardsIcon), label: 'Cards'),
            BottomNavigationBarItem(
              icon: Icon(settingsIcon),
              label: 'Settings',
            ),
          ],
          currentIndex: value.pageValue,
          onTap: (int index) {
            // setState(() {
            //   _currentIndex = index;
            // });
            pageChangeProvider.changePage(index);
          },
        ),
      ),
      body: Consumer<PageChangeProvider>(
          builder: (context, value, child) => _pages[value.pageValue]),
    );
  }
}
