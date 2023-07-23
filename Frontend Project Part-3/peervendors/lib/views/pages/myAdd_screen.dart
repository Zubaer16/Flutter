import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/watch_provider.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/views/components/custom_floating_action_button.dart';
import 'package:peervendors/views/components/watch.dart';
import '../components/custom_dialog.dart';

class MyAddScreen extends StatelessWidget {
  const MyAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> watch = WatchProvider().getWatchList;

    return Scaffold(
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 18.0, bottom: 75).r,
          child: CustomFloatingActionButton(
            onTap: () {
              customDialog(context, 'sfasdf', null);
            },
          )),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    titleSpacing: 1,
                    toolbarHeight: 107.h,
                    backgroundColor: whiteFFFFFF,
                    automaticallyImplyLeading: false,
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          'My Ads',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 22.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w500,
                              height: 33.0.toFigmaHeight(22.sp)),
                        ),
                        SizedBox(
                          height: 22.h,
                          width: MediaQuery.of(context).size.width,
                        )
                      ],
                    ),
                    bottom: TabBar(
                        indicatorColor: whiteC4C4C4,
                        indicatorWeight: 4.h,
                        tabs: [
                          Column(
                            children: [
                              ImageIcon(
                                AssetImage('images/shopping.png'),
                                color: black000000,
                                size: 25.w,
                              ),
                              Text(
                                'My Ads',
                                style: TextStyle(
                                    color: black000000,
                                    fontSize: 13.sp,
                                    fontFamily: poppins,
                                    fontWeight: FontWeight.w400,
                                    height: 19.5.toFigmaHeight(13.sp)),
                              ),
                              SizedBox(
                                height: 22.h,
                                width: MediaQuery.of(context).size.width,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              ImageIcon(
                                AssetImage('images/heart.png'),
                                color: black000000,
                                size: 25.w,
                              ),
                              Text(
                                'My Favourites',
                                style: TextStyle(
                                    color: black000000,
                                    fontSize: 13.sp,
                                    fontFamily: poppins,
                                    fontWeight: FontWeight.w400,
                                    height: 19.5.toFigmaHeight(13.sp)),
                              ),
                              SizedBox(
                                height: 22.h,
                              )
                            ],
                          ),
                        ]),
                  ),
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBarView(children: [
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        // crossAxisSpacing: 1.w,
                        mainAxisSpacing: 74.9.h),
                    itemCount: watch.length,
                    itemBuilder: (_, index) {
                      return Center(
                        child: Watch(
                            imageLink: watch[index]['image'],
                            imageName: watch[index]['name'],
                            model: watch[index]['model'],
                            price: watch[index]['price']),
                      );
                    }),
                const Center(child: Text('my favouries screen'))
              ]),
            )),
      ),
    );
  }
}
