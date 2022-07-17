// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class myTodo extends StatefulWidget {
  const myTodo({Key? key}) : super(key: key);

  @override
  State<myTodo> createState() => _myTodoState();
}

class _myTodoState extends State<myTodo> {
  TextEditingController _userInputController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  //TextEditingController _updateController = TextEditingController();

  //List<String> myTodo = ['hi', 'hi', 'hi', 'hi'];

  Box? todobox;
  Box? descbox;

  @override
  void initState() {
    todobox = Hive.box('todo-list');
    descbox = Hive.box('description');
    super.initState();
  }

  @override
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
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                hintText: 'write description',
              ),
            ),
            SizedBox(
                width: 400,
                child: ElevatedButton(
                    onPressed: () async {
                      final _userInput = _userInputController.text;
                      final _descInput = _descriptionController.text;

                      await todobox!.add(_userInput);
                      await descbox!.add(_descInput);

                      Fluttertoast.showToast(msg: 'New todo added');
                    },
                    child: Text('Add a new todo'))),
            Expanded(
                child: ValueListenableBuilder(
              valueListenable: Hive.box('todo-list').listenable(),
              builder: (_, box, widget) {
                return ListView.builder(
                    itemCount: todobox!.keys.toList().length,
                    itemBuilder: (_, index) {
                      TextEditingController _updateController =
                          TextEditingController(
                              text: todobox!.getAt(index).toString());
                      TextEditingController _descupdateController =
                          TextEditingController(
                              text: descbox!.getAt(index).toString());
                      return Card(
                        elevation: 4,
                        child: ListTile(
                          subtitle: Text(descbox!.getAt(index).toString()),
                          title: Text(todobox!.getAt(index).toString()),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(children: [
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) {
                                        return AlertDialog(
                                          title: Text('Update a todo'),
                                          content: Column(
                                            children: [
                                              TextField(
                                                autofocus: true,
                                                controller: _updateController,
                                                decoration: InputDecoration(
                                                  hintText: 'Update your todo',
                                                ),
                                              ),
                                              TextField(
                                                controller:
                                                    _descupdateController,
                                                decoration: InputDecoration(
                                                  hintText: 'Update your todo',
                                                ),
                                              ),
                                              SizedBox(
                                                  width: 200,
                                                  child: ElevatedButton(
                                                      onPressed: () async {
                                                        final _userInput =
                                                            _updateController
                                                                .text;
                                                        final _descInput =
                                                            _descupdateController
                                                                .text;

                                                        await todobox!.putAt(
                                                            index, _userInput);
                                                        await descbox!.putAt(
                                                            index, _descInput);
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text('Update'))),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                icon: Icon(Icons.edit_outlined),
                                color: Colors.green,
                              ),
                              IconButton(
                                onPressed: () async {
                                  await todobox!.deleteAt(index);
                                  await descbox!.deleteAt(index);
                                },
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
