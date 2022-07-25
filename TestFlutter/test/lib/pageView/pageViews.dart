import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageViews extends StatefulWidget {
  const PageViews({Key? key}) : super(key: key);

  @override
  State<PageViews> createState() => _PageViewsState();
}

class _PageViewsState extends State<PageViews> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8),
          child: SizedBox(
            height: 89,
            child: PageView(
              pageSnapping: false,

              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              controller: controller,
              children: <Widget>[
                Container(
                  height: 89,
                  width: 196,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Text('First Page'),
                ),
                Container(
                  height: 89,
                  width: 196,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber),
                  child: Text('Second Page'),
                ),
                Container(
                  height: 89,
                  width: 196,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Text('Third Page'),
                )
              ],
            ),
          ),
        ),
        Text('hi')
      ],
    )));
  }
}
