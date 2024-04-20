import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NavHome extends StatelessWidget {
  NavHome({super.key});

  final List<Widget> imageItems = [
    Image.asset(
      'assets/images/navHomePic1.png',
    ),
    Image.asset('assets/images/navHomePic2.png'),
    Image.asset('assets/images/navHomePic3.png')
  ];

  final RxInt carouselIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
        )
      ]),
    ));
  }
}
