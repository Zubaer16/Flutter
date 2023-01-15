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
              // These are the slivers that show up in the "outer" scroll view.
              return <Widget>[
                SliverOverlapAbsorber(
                  // This widget takes the overlapping behavior of the SliverAppBar,
                  // and redirects it to the SliverOverlapInjector below. If it is
                  // missing, then it is possible for the nested "inner" scroll view
                  // below to end up under the SliverAppBar even when the inner
                  // scroll view thinks it has not been scrolled.
                  // This is not necessary if the "headerSliverBuilder" only builds
                  // widgets that do not overlap the next sliver.
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
                            height: 46.h,
                            child: DropdownButtonFormField(
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
                                          BorderSide(color: focusBlueColor))),
                            ),
                          )
                        ],
                      ),
                    ),
                    toolbarHeight: 120.h, // This is the title in the app bar.
                    // pinned: true,
                    automaticallyImplyLeading: false,
                    expandedHeight: 150.0,
                    backgroundColor: Color(0xffF1F3F4),

                    // The "forceElevated" property causes the SliverAppBar to show
                    // a shadow. The "innerBoxIsScrolled" parameter is true when the
                    // inner scroll view is scrolled beyond its "zero" point, i.e.
                    // when it appears to be scrolled below the SliverAppBar.
                    // Without this, there are cases where the shadow would appear
                    // or not appear inappropriately, because the SliverAppBar is
                    // not actually aware of the precise position of the inner
                    // scroll views.
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

                      // These are the widgets to put in each tab in the tab bar.
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
              children: tabs.map((String name) {
                return SafeArea(
                  top: false,
                  bottom: false,
                  child: Builder(
                    // This Builder is needed to provide a BuildContext that is
                    // "inside" the NestedScrollView, so that
                    // sliverOverlapAbsorberHandleFor() can find the
                    // NestedScrollView.
                    builder: (BuildContext context) {
                      return CustomScrollView(
                        // The "controller" and "primary" members should be left
                        // unset, so that the NestedScrollView can control this
                        // inner scroll view.
                        // If the "controller" property is set, then this scroll
                        // view will not be associated with the NestedScrollView.
                        // The PageStorageKey should be unique to this ScrollView;
                        // it allows the list to remember its scroll position when
                        // the tab view is not on the screen.
                        key: PageStorageKey<String>(name),
                        slivers: <Widget>[
                          SliverOverlapInjector(
                            // This is the flip side of the SliverOverlapAbsorber
                            // above.
                            handle:
                                NestedScrollView.sliverOverlapAbsorberHandleFor(
                                    context),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.all(8.0),
                            // In this example, the inner scroll view has
                            // fixed-height list items, hence the use of
                            // SliverFixedExtentList. However, one could use any
                            // sliver widget here, e.g. SliverList or SliverGrid.
                            sliver: SliverFixedExtentList(
                              // The items in this example are fixed to 48 pixels
                              // high. This matches the Material Design spec for
                              // ListTile widgets.
                              itemExtent: 48.0,
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  // This builder is called for each child.
                                  // In this example, we just number each list item.
                                  return ListTile(
                                    title: Text('Item $index'),
                                  );
                                },
                                // The childCount of the SliverChildBuilderDelegate
                                // specifies how many children this inner list
                                // has. In this example, each tab has a list of
                                // exactly 30 items, but this is arbitrary.
                                childCount: 30,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
