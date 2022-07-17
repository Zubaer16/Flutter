import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen(this.postId, this.name, this.email, this.body);

  int? postId;
  String? name;
  String? email;
  String? body;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Text(postId.toString()),
          Text(name!),
          Text(email!),
          Text(body!),
        ]),
      ),
    );
  }
}
