import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

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

        /* THIS TEXT THEME IS COMMENTED FOR OVERFLOW ISSUES. FOR ASSIGNMENT
        AND UNDERSTANDIG PURPOSE, THIS TEXT THEME APPLIED BEFORE COMMENTING */

        /* textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply()
        )*/
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
