import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peervendors/extensions/custom_extensions.dart';
import 'package:peervendors/provider/categories_provider.dart';
import 'package:peervendors/provider/watch_provider.dart';
import 'package:peervendors/storage/color_storage.dart';
import 'package:peervendors/storage/font_storage.dart';
import 'package:peervendors/storage/icon_storage.dart';
import 'package:peervendors/views/components/categories.dart';
import 'package:peervendors/views/components/custom_dialog.dart';
import 'package:peervendors/views/components/custom_floating_action_button.dart';
import 'package:peervendors/views/components/drawer_options.dart';
import 'package:peervendors/views/components/watch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final List<String> categories = CategoriesProvider().getGetCategories;
    final List<dynamic> watch = WatchProvider().getWatchList;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: whiteF4F5F7,
            floatingActionButton: Padding(
                padding: const EdgeInsets.only(right: 18.0, bottom: 75).r,
                child: CustomFloatingActionButton(
                  onTap: () {
                    customDialog(context, 'sfasdf', null);
                  },
                )),
            drawer: Drawer(
                child: Padding(
              padding: const EdgeInsets.only(left: 39).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 82.h,
                  ),
                  Image.asset(
                    'images/pvLogo.png',
                    height: 99.h,
                    width: 99.w,
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Account Metrics'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Help & Support'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Contact Us'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Share App'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Rate Us'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'FAQ'),
                  SizedBox(
                    height: 14.5.h,
                  ),
                  const DrawerOptions(drawerOptionText: 'Privacy Policy'),
                ],
              ),
            )),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 60.h,
                    width: MediaQuery.of(context).size.width,
                    color: whiteFFFFFF,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 28.w,
                        ),
                        Image.asset(
                          'images/location.png',
                          height: 21.h,
                          width: 21.w,
                        ),
                        SizedBox(
                          width: 11.w,
                        ),
                        Text(
                          'Gazipur,  Dhaka',
                          style: TextStyle(
                              color: black3A2F2F,
                              fontSize: 18.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w400,
                              height: 27.0.toFigmaHeight(18.sp)),
                        ),
                        SizedBox(
                          width: 176.w,
                        ),
                        InkWell(
                          onTap: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                    right: 8.0, top: 8, bottom: 8)
                                .r,
                            child: Image.asset(
                              'images/help.png',
                              height: 21.h,
                              width: 21.w,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    width: 370.w,
                    height: 48.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: black000000.withOpacity(.25))),
                          hintText: 'Search Products',
                          hintStyle: TextStyle(
                              color: black3A2F2F,
                              fontSize: 15.sp,
                              fontFamily: poppins,
                              fontWeight: FontWeight.w300,
                              height: 1),
                          contentPadding: const EdgeInsets.only(left: 21).r,
                          suffixIcon: const InkWell(
                            onTap: null,
                            child: Icon(
                              search,
                              size: 21,
                              color: black000000,
                            ),
                          ),
                          filled: true,
                          fillColor: whiteFFFFFF,
                          focusColor: whiteF4F5F7,
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(6)).r,
                            borderSide: BorderSide(
                                width: 1.w,
                                color: black000000.withOpacity(0.5)),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28).r,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 39.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                  padding: const EdgeInsets.only(right: 7).r,
                                  child: Categories(
                                    categoryName: categories[index],
                                    onPressed: null,
                                  ));
                            })),
                  ),
                  SizedBox(
                    height: 74.9.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20).r,
                    child: Wrap(spacing: 24.6.w, runSpacing: 74.9.h, children: [
                      ...List.generate(
                          watch.length,
                          (index) => Watch(
                              imageLink: watch[index]['image'],
                              imageName: watch[index]['name'],
                              model: watch[index]['model'],
                              price: watch[index]['price']))
                    ]),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
