import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/styles/styles.dart';
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
          searchInput(),
          SizedBox(height: 61.h),
          Padding(
              padding: const EdgeInsets.only(left: 10, right: 10).r,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('For You', style: AppStyles.textStyleB16500),
                    TextButton(
                        onPressed: () {},
                        child:
                            Text('See All', style: AppStyles.textStyleG14500))
                  ])),
          SizedBox(
            height: 120.h,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      height: 120.h,
                      width: 92.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15).r,
                        // image: DecorationImage(
                        //     image: AssetImage(''), fit: BoxFit.cover)
                      ));
                }),
          )
        ]),
      ),
    ));
  }
}
