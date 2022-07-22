import 'package:flutter/material.dart';
import 'package:sutraq/pages/cards_page.dart';
import 'package:sutraq/pages/dashboard_page.dart';
import 'package:sutraq/pages/settings_page.dart';
import 'package:sutraq/pages/wallet_page.dart';

import 'package:sutraq/storage/icon_storage.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _pages = [
    const DashboardPage(),
    const WalletPage(),
    const CardsPage(),
    const SettingsPage()
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF0DBE53),
        unselectedItemColor: const Color(0xFFDADADA),
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(dashboardIcon), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(walletIcon), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(cardsIcon), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(settingsIcon), label: 'Settings'),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
