import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_icons.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/details_description.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  final List<Widget> imageItems = [
    Image.asset(
      'assets/images/navHomePic1.png',
    ),
    Image.asset('assets/images/navHomePic2.png'),
    Image.asset('assets/images/navHomePic3.png')
  ];

  final String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas maecenas. Velit laoreet id donec ultrices tincidunt arcu.Ac ut consequat semper viverra nam. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Gravida neque convallis a cras semper. Ullamcorper dignissim cras tincidunt lobortis feugiat. Volutpat odio facilisis mauris sit amet massa vitae tortor. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum.';
  final String facilities =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas maecenas. Velit laoreet id donec ultrices tincidunt arcu.';
  final String destination =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas maecenas';
  final String journeyDate =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Details',
              style: AppStyles.textStyleB20400,
            ),
            const Icon(AppIcons.favoriteOutline)
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  CarouselSlider(
                      items: imageItems,
                      options: CarouselOptions(
                        aspectRatio: 16 / 7,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.2,
                        scrollDirection: Axis.horizontal,
                      )),
                  detailsDescription('Description', description),
                  detailsDescription('Facilities', facilities),
                  detailsDescription('Destination', destination),
                  detailsDescription('Journey Date & Time', journeyDate),
                  detailsDescription('Cost', '3000 ')
                ],
              ))),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Row(children: [
                  SizedBox(width: 30.w),
                  Text(
                    'Owner Name',
                    style: AppStyles.textStyleB17B,
                  ),
                  SizedBox(
                    width: 172.w,
                  ),
                  Icon(
                    AppIcons.phoneInTalkOutlined,
                    size: 30.w,
                  ),
                  SizedBox(
                    width: 21.w,
                  ),
                  Icon(
                    AppIcons.chatOutlined,
                    size: 30.w,
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
