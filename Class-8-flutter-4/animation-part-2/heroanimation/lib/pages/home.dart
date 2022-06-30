// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import '../details_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => DetailsScreen())),
                    leading: Hero(
                        tag: '1', child: Image.asset('assets/vegetables.png')),
                    title: Text('vegetables'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
