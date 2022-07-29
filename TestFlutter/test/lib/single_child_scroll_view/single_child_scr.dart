import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingleChildScr extends StatelessWidget {
  const SingleChildScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('hiiiiiiii'),
            SizedBox(
              height: MediaQuery.of(context).size.height +
                  MediaQuery.of(context).size.height,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 100,
                  itemBuilder: (_, context) {
                    return Text('hi');
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
