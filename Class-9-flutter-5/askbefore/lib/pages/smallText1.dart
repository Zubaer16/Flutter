// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/widgets.dart';

class SmallText1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 715
        ? Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Grow closer to your loved ones \nby asking this question.',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(
                    0xFF4F7C87,
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              SizedBox(
                height: 85,
              ),
              Text(
                'Grow closer to your loved ones \nby asking this question.',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(
                      0xFF4F7C87,
                    )),
              ),
            ],
          );
  }
}
