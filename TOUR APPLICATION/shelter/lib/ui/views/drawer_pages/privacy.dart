import 'package:flutter/material.dart';
import 'package:shelter/ui/widgets/custom_appbar.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar('Privacy'),
        body: const Center(child: Text('Show pdf')));
  }
}
