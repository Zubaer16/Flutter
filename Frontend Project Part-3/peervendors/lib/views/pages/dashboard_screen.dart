import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/views/pages/account_screen.dart';
import 'package:peervendors/views/pages/category_screen.dart';
import 'package:peervendors/views/pages/chat_screen.dart';
import 'package:peervendors/views/pages/home_screen.dart';
import 'package:peervendors/views/pages/myAdd_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarHeight: 60.h,
      confineInSafeArea: true,
      backgroundColor: whiteFFFFFF, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
        colorBehindNavBar: Colors.white,
        boxShadow: [
          const BoxShadow(
            color: Color(0x26000000),
            blurRadius: 5,
            offset: Offset(0, -2),
            spreadRadius: 0,
          )
        ],
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style15,
    );
  }
}

List<Widget> _buildScreens() {
  return [
    const HomeScreen(),
    const MyAddScreen(),
    const CategoryScreen(),
    const ChatScreen(),
    const AccountScreen()
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const ImageIcon(
        AssetImage('images/home.png'),
      ),
      title: ("Home"),
      textStyle: TextStyle(fontSize: 14.sp, height: 0.1),
      activeColorPrimary: blue5364F4,
      inactiveColorPrimary: whiteC4C4C4,
    ),
    PersistentBottomNavBarItem(
      icon: const ImageIcon(
        AssetImage('images/shopping.png'),
      ),
      title: ("My Ads"),
      textStyle: TextStyle(fontSize: 14.sp, height: 0.1),
      activeColorPrimary: blue5364F4,
      inactiveColorPrimary: whiteC4C4C4,
    ),
    PersistentBottomNavBarItem(
      icon: const ImageIcon(
        AssetImage('images/add.png'),
      ),
      textStyle: TextStyle(fontSize: 14.sp, height: 0.1),
    ),
    PersistentBottomNavBarItem(
      icon: const ImageIcon(
        AssetImage('images/chat.png'),
      ),
      title: ("Chat"),
      textStyle: TextStyle(fontSize: 14.sp, height: 0.1),
      activeColorPrimary: blue5364F4,
      inactiveColorPrimary: whiteC4C4C4,
    ),
    PersistentBottomNavBarItem(
      icon: const ImageIcon(
        AssetImage('images/user.png'),
      ),
      title: ("Account"),
      textStyle: TextStyle(fontSize: 14.sp, height: 0.1),
      activeColorPrimary: blue5364F4,
      inactiveColorPrimary: whiteC4C4C4,
    ),
  ];
}
