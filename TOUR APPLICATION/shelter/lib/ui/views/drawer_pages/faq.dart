import 'package:flutter/material.dart';
import 'package:shelter/ui/widgets/custom_appbar.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('FAQ'), body: Center(child: Text('Show pdf')));
  }
}
