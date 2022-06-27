import 'package:flutter/material.dart';

import 'package:myfirstapp/bottom_nav_controller.dart';
import 'package:myfirstapp/details_screen.dart';
import 'package:myfirstapp/pages/add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/first-screen': (context) => AddScreen(),
        '/second-screen': (context) => DetailsScreen()
      },
      home: BottomNavController(),
    );
  }
}
