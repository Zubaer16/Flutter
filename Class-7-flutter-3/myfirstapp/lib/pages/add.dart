import 'package:flutter/material.dart';
import 'package:myfirstapp/details_screen.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pushReplacement(
            //     context, MaterialPageRoute(builder: (_) => DetailsScreen()));
            Navigator.pushNamed(context, '/second-screen');
          },
          child: Text('First Screen'),
        ),
      ),
    );
  }
}
