import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnprovider/details.dart';
import 'package:learnprovider/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todos = Provider.of<TodoProvider>(context);
    TextEditingController _titleController = TextEditingController();
    TextEditingController _descriptionController = TextEditingController();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('todos length: ${todos.todos.length}'),
        actions: [
          IconButton(
              onPressed: () => Navigator.push(
                  context, CupertinoPageRoute(builder: (_) => DetailsScreen())),
              icon: Icon(Icons.arrow_forward))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text('Add new todo'),
                    content: Column(
                      children: [
                        TextField(
                          controller: _titleController,
                          decoration: InputDecoration(hintText: 'title'),
                        ),
                        TextField(
                          controller: _descriptionController,
                          decoration: InputDecoration(hintText: 'description'),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              final title = _titleController.text;
                              final description = _descriptionController.text;

                              todos.addNewTodo(title, description);
                              Navigator.pop(context);
                            },
                            child: Text('add'))
                      ],
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: todos.todos.length,
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(todos.todos[index].title),
              subtitle: Text(todos.todos[index].description),
              trailing: IconButton(
                  onPressed: () {
                    todos.deleteTodo(index);
                  },
                  icon: Icon(Icons.remove_circle_outline)),
            );
          }),
    ));
  }
}
