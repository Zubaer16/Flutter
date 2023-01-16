// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sutraq/components/custom_circle_button.dart';
import 'package:sutraq/components/recent_transactions.dart';
import 'package:sutraq/storage/color_storage.dart';

import '../storage/icon_storage.dart';

class ViewAllTransactions extends StatelessWidget {
  const ViewAllTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['ALL TRANSACTIONS', 'DEBITS', 'CREDITS'];
    return GestureDetector(
      onTap: () => {FocusScope.of(context).unfocus()},
      child: DefaultTabController(
        length: tabs.length, // This is the number of tabs.
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    titleSpacing: 1,
                    title: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 180.h,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                ).r,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Text(
                                    'Transaction History',
                                    style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10).r,
                                child: CustomCircleButton(
                                    onPressed: () => {Get.back()}),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13.h,
                          ),
                          SizedBox(
                            width: 237.w,
                            height: 54.h,
                            child: DropdownButtonFormField(
                              menuMaxHeight: 150,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400),
                              iconSize: 0,
                              items: ['one', 'two', 'three']
                                  .map((e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ))
                                  .toList(),
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                  suffixIcon: Padding(
                                    padding:
                                        const EdgeInsets.only(right: 15.71).r,
                                    child: const Icon(
                                      expandMore,
                                      color: greenColor,
                                    ),
                                  ),
                                  border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFFC5C5C5))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: greenColor))),
                            ),
                          )
                        ],
                      ),
                    ),
                    toolbarHeight: 135.h,
                    // pinned: true,
                    automaticallyImplyLeading: false,
                    expandedHeight: 150.0,
                    backgroundColor: Color(0xffF1F3F4),

                    forceElevated: innerBoxIsScrolled,
                    bottom: TabBar(
                      indicatorColor: Color(0xff046AE1),
                      labelColor: Color(0xff046AE1),
                      unselectedLabelColor: Color(0xff969696),
                      isScrollable: true,
                      labelStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        height: 4.h,
                      ),
                      tabs: [
                        SizedBox(
                            width: 120.w,
                            child: Text(
                              tabs[0],
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 80.w,
                            child: Text(
                              tabs[1],
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                            width: 50.w,
                            child: Text(
                              tabs[2],
                              textAlign: TextAlign.center,
                            )),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              // These are the contents of the tab views, below the tabs.
              children: [
                ListView.builder(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0).r,
                    itemCount: 20,
                    itemBuilder: (_, index) {
                      if (index == 0 || index == 1) {
                        return RecentTransactions(
                          islineThrough: true,
                          isReceived: true,
                          isDollar: false,
                          amount: '240,000',
                        );
                      } else if (index % 2 == 1) {
                        return RecentTransactions(
                            islineThrough: true,
                            isReceived: true,
                            isDollar: false,
                            amount: '240,000');
                      } else if (index % 2 == 0) {
                        return RecentTransactions(
                            islineThrough: true,
                            isReceived: false,
                            isDollar: false,
                            amount: '240,000');
                      } else {
                        return Container();
                      }
                    }),
                Text('Debit Tab'),
                Text('Credit Tab')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
