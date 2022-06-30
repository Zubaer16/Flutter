// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* double _height = 100;

  double _width = 200;

  Color _color = Colors.black;

  void animatedContainer() {
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.green;
    });
  }*/

  //double _fontSize = 30;

  //double _right = 0;

  //double _opacity = 1;

  //Alignment _alignment = Alignment.centerRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            _opacity = 0.2;
          });
        },
        child: Text('change opacity'),
      ),*/
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Image.asset('assets/vegetables.png'),
                    title: Text('vegetables'),
                  ),
                )
              ],
            )
            /*Column(
            children: [
              AnimatedAlign(
                  duration: Duration(seconds: 5),
                  alignment: _alignment,
                  child: Text('My text')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _alignment = Alignment.centerLeft;
                    });
                  },
                  child: Text('Chagne alignment'))
            ],
          ),*/
            /*Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 3),
                curve: Curves.bounceInOut,
                height: _height,
                width: _width,
                decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                onEnd: () {
                  setState(() {
                    _width = _width == 200 ? 400 : 200;
                    _color =
                        _color == Colors.black ? Colors.green : Colors.black;
                  });
                },
              ),
              AnimatedDefaultTextStyle(
                child: Text('We are learning animated default text style'),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: Colors.blue,
                ),
                duration: Duration(seconds: 2),
                curve: Curves.easeInBack,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Animate'))
            ],
          ),*/
            /*Container(
              height: 400,
              width: 400,
              color: Colors.green,
              child: Stack(
                children: [
                  AnimatedPositioned(
                      right: _right,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _right = 50;
                            });
                          },
                          child: Text('animate')),
                      duration: Duration(seconds: 5))
                ],
              ),
            )*/
            /*Column(
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(seconds: 2),
                  child: Card(
                    child: ListTile(
                      title: Text('My List tile'),
                    ),
                  ),
                )
              ],
            )*/
            ),
      ),
    );
  }
}
