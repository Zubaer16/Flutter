import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 715
        ? Padding(
            padding: const EdgeInsets.only(top: 10, left: 5),
            child: Image.asset(
              'assets/logo.png',
              height: 63,
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Image.asset(
              'assets/logo.png',
              height: 100,
            ),
          );
  }
}
