// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
            body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                      sliver: SliverAppBar(
                        title: Padding(
                          padding: const EdgeInsets.only(left: 145),
                          child: Text(
                            'My Ads',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        pinned: true,
                        backgroundColor: Colors.white,
                        expandedHeight: 150.0,
                        //forceElevated: innerBoxIsScrolled,
                        bottom: TabBar(
                          indicatorColor: Color(0XFFC4C4C4),
                          tabs: [
                            Column(
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.black,
                                ),
                                Text(
                                  'My Ads',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Text('Jalis')
                          ],
                        ),
                      ),
                    ),
                  ];
                },
                body: Text('hi')),
          )),
    ));
  }
}
