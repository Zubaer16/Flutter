import 'package:flutter/material.dart';
import 'package:shelter/ui/styles/styles.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'FAQ',
            style: AppStyles.textStyleB20400,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(child: Text('Show pdf')));
  }
}
