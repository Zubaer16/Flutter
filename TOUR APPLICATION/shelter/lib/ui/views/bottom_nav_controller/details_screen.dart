import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

  String description =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas maecenas. Velit laoreet id donec ultrices tincidunt arcu.Ac ut consequat semper viverra nam. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Gravida neque convallis a cras semper. Ullamcorper dignissim cras tincidunt lobortis feugiat. Volutpat odio facilisis mauris sit amet massa vitae tortor. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum.';
  String facilities =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas maecenas. Velit laoreet id donec ultrices tincidunt arcu.';

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
                ],
              ))),
          Expanded(
              flex: 1,
              child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Text('hi')))
        ],
      ),
    );
  }
}
