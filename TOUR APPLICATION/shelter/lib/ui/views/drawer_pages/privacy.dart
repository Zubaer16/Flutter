import 'package:flutter/material.dart';
import 'package:shelter/ui/styles/styles.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Privacy',
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
