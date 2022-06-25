// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyAdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFFE5E5E5),
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
                        indicatorColor: Color.fromARGB(237, 196, 196, 196),
                        tabs: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  Icons.shopping_bag,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'My Ads',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  'My Favourites',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100, left: 20),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: GridView.builder(
                          itemCount: 20,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: .7,
                          ),
                          itemBuilder: (_, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      top: -100,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 50, left: 16),
                                        child: Image.asset(
                                          "assets/watch.png",
                                          width: 140,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, left: 20),
                                          child: Text(
                                            'Apple Watch',
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, left: 20),
                                          child: Text(
                                            "Series 6. Red",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black
                                                    .withOpacity(0.5)),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, left: 20),
                                          child: Text(
                                            "\$ 359",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xFF5956E9)),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 110, left: 20),
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (_, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              elevation: 5,
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      ExactAssetImage('assets/watch.png'),
                                ),
                                title: Text(
                                  'Apple Watch',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  'Series 6. Red',
                                  style: TextStyle(fontSize: 14),
                                ),
                                trailing: Text('\$ 369',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF5956E9))),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ]))),
    )));
  }
}
