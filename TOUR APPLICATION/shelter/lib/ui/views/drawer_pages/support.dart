import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/ui/styles/styles.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Support',
          style: AppStyles.textStyleB20400,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0).r,
        child: Column(
          children: [
            Text(
              'If you have any problems, please contact us. We are at your service all the time',
              style: AppStyles.textStyleB20300,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.blue))),
            )
          ],
        ),
      ),
    );
  }
}
