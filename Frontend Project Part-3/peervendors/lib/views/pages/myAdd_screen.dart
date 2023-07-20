import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';

class MyAddScreen extends StatelessWidget {
  const MyAddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          height: 47.h,
                          width: MediaQuery.of(context).size.width,
                        )
                      ],
                    ),
                    bottom: TabBar(tabs: [
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
            body: TabBarView(children: [Text(''), Text('')])),
      ),
    );
  }
}
