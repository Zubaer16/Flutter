// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:learngetx/home.dart';
import 'package:learngetx/pages/getstorage.dart';
import 'package:learngetx/pages/navigation.dart';
import 'package:learngetx/pages/navigatoin2.dart';
import 'package:learngetx/pages/snckbar.dart';

const String navigationScreen = '/first-screen';
const String navSecond = '/second-screen';
const String homeScreen = '/home-screen';
const String snackBar = '/snack-screen';
const String storage = '/storage-screen';

List<GetPage> getPages = [
  GetPage(
      name: navigationScreen,
      page: () => NavigationScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: navSecond,
      page: () => NavSecond(),
      transition: Transition.leftToRight),
  GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      transition: Transition.leftToRight),
  GetPage(
      name: snackBar,
      page: () => SnackBarrr(),
      transition: Transition.leftToRight),
  GetPage(
      name: storage,
      page: () => GetandStorage(),
      transition: Transition.leftToRight),
];
