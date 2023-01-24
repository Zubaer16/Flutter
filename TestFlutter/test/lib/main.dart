// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test/gesture_detector/gesture_dect.dart';
import 'package:test/listview_builder/list_view_builder.dart';
import 'package:test/nested_scroll_view/nest_scroll_view.dart';
import 'package:test/provider/counter.dart';
import 'package:test/provider/provider_learn.dart';
import 'package:test/single_child_scroll_view/single_child_scr.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProviderLearn(),
    );
  }
}
