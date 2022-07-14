// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class myTodo extends StatefulWidget {
  const myTodo({Key? key}) : super(key: key);

  @override
  State<myTodo> createState() => _myTodoState();
}

class _myTodoState extends State<myTodo> {
  TextEditingController _userInputController = TextEditingController();
  List<String> todos = [
    'This is my first todo',
    'I have completed my graduation',
    'I love machine learning'
  ];

  Box? todobox;

  @override
  void initState() {
    todobox = Hive.box('todo-list');
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            TextField(
              controller: _userInputController,
              decoration: InputDecoration(
                hintText: 'write a new todo',
              ),
            ),
            SizedBox(
                width: 400,
                child: ElevatedButton(
                    onPressed: () async {
                      final _userInput = _userInputController.text;
                      print(_userInput);
                      await todobox!.add(_userInput);
                      print('object');
                    },
                    child: Text('Add a new todo'))),
            Expanded(
                child: ValueListenableBuilder(
              valueListenable: Hive.box('todo-list').listenable(),
              builder: (_, box, widget) {
                return ListView.builder(
                    itemCount: todobox!.keys.toList().length,
                    itemBuilder: (_, index) {
                      return Card(
                        elevation: 4,
                        child: ListTile(
                          title: Text(todobox!.getAt(index).toString()),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.edit_outlined),
                                color: Colors.green,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete_outline),
                                color: Colors.red,
                              )
                            ]),
                          ),
                        ),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    ));
  }
}
