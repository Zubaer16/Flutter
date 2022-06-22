// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List<String> _categories = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
    'Fashion',
    'Glasses',
    'Camera',
    'Toys'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hello Zubaer',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            Text(
              "Let's gets something?",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4F4C4C)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40 % off During\ncovid 19",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/vegetables.png",
                              width: 130,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40 % off During\ncovid 19",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/vegetables.png",
                              width: 130,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "40 % off During\ncovid 19",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              "assets/vegetables.png",
                              width: 130,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Categories',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _categories.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(_categories[index]),
                      )),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 1000,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10),
                  itemBuilder: (_, index) {
                    return Container(
                      color: Colors.green,
                    );
                  }),
            )
          ]),
        ),
      )),
    );
  }
}
