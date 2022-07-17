// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restapi/model/comments.dart';
import 'package:restapi/model/detailsScreen.dart';

import 'helper/comments_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Comments>? comments;
  bool isLoaded = false;

  getData() async {
    comments = await Comments_helper().getComments();
    setState(() {
      isLoaded = true;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: comments?.length ?? 0,
          itemBuilder: (_, index) {
            return Visibility(
              visible: isLoaded,
              child: Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailsScreen(
                                comments![index].postId,
                                comments![index].name,
                                comments![index].email,
                                comments![index].body)));
                  },
                  title: Text(comments![index].email),
                ),
              ),
              replacement: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }),
    );
  }
}
