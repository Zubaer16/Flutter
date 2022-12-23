import 'package:flutter/material.dart';

class GestureDect extends StatelessWidget {
  const GestureDect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            print('clicked');
          },
          child: Center(
            child: Container(
                color: Colors.amber,
                height: 200,
                width: 200,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text(
                      'Click me',
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
