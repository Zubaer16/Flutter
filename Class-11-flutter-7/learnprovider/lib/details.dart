import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learnprovider/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);

    return SafeArea(
        child: Scaffold(
      body: Center(child: Text('todos length: ${todos.todos.length}')),
    ));
  }
}
