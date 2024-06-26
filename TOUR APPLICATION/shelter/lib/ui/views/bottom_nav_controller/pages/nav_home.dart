import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/views/bottom_nav_controller/details_screen.dart';
import 'package:shelter/ui/views/bottom_nav_controller/see_all.dart';
import 'package:shelter/ui/widgets/nav_home_categories.dart';
import 'package:shelter/ui/widgets/search_input.dart';

class NavHome extends StatelessWidget {
  NavHome({super.key});

  final List<Widget> imageItems = [
    Image.asset(
      'assets/images/navHomePic1.png',
    ),
    Image.asset('assets/images/navHomePic2.png'),
    Image.asset('assets/images/navHomePic3.png')
  ];

  final List<String> imageLinks = [
    'assets/images/navHomePic1.png',
    'assets/images/navHomePic2.png',
    'assets/images/navHomePic3.png'
  ];

  final RxInt carouselIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SingleChildScrollView(
        child: Column(children: [
          CarouselSlider(
              items: imageItems,
              options: CarouselOptions(
                aspectRatio: 16 / 7,
                initialPage: 0,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  carouselIndex.value = index;
                },
              )),
          Obx(
            () => DotsIndicator(
              dotsCount: imageItems.length,
              position: carouselIndex.value,
            ),
          ),
          searchInput(() {
            Get.toNamed(searchScreen);
          }),
          SizedBox(height: 61.h),
          navHomeCategories(false, imageLinks[0], 'For You', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => SeeAll(
                          imageUrl: imageLinks[0],
                        )));
          }, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailsScreen()));
          }),
          SizedBox(height: 31.h),
          navHomeCategories(false, imageLinks[1], 'Recently Added', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => SeeAll(
                          imageUrl: imageLinks[1],
                        )));
          }, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailsScreen()));
          }),
          SizedBox(height: 31.h),
          navHomeCategories(true, imageLinks[2], 'Top Places', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => SeeAll(
                          imageUrl: imageLinks[2],
                        )));
          }, () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => DetailsScreen()));
          }),
        ]),
      ),
    ));
  }
}
