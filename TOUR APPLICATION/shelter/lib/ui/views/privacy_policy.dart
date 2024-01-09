import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/widgets/violetButton.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10).r,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.green,
            )),
            VioletButton(title: 'Agree', onAction: () {})
          ],
        ),
      ),
    ));
  }
}
