import 'package:flutter/material.dart';
import 'package:myfirstapp/bottom_nav_controller.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:BottomNavController(),
    );
  }
}