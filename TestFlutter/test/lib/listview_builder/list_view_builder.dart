import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.brown,
              ),
              Container(
                  height: 50 * 50,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          color: Colors.amber,
                          child: Center(child: Text('Entry $index')),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
