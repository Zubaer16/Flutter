import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

class NavAdd extends StatelessWidget {
  const NavAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20).r,
        child: Column(children: [
          Text(
            'If you have any problems, please contact us. We are at your service all the time.',
            style: AppStyles.textStyleB24400,
          )
        ]),
      ),
    );
  }
}
