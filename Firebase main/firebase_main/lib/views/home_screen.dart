import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    final box = GetStorage();
    box.remove('id');
    super.initState();
    print('init state called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
