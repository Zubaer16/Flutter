import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sutraq/components/custom_cards.dart';
import 'package:sutraq/provider/cards_page_indicator_provider.dart';
import 'package:sutraq/route/route_mange.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/font_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';
import 'package:visibility_detector/visibility_detector.dart';
import '../components/recent_transactions.dart';

final slider = [
  CustomCards(dots: true),
  CustomCards(
    dots: true,
    color: Color(0xff330693),
  )
];

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardsPageIncdicatorProvider =
        Provider.of<CardsPageIndicatorProvider>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xffF1F3F4),
            floatingActionButton: FloatingActionButton(
              onPressed: () => {Get.toNamed(add_new_card_bank_account)},
              backgroundColor: Color(0xff046AE1),
              child: Icon(
                add,
                color: Colors.white,
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  Text('My Cards',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: gelion)),
                  SizedBox(
                    height: 31.h,
                  ),
                  SizedBox(
                    height: 151.h,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: slider.length,
                      itemBuilder: (_, index) {
                        return VisibilityDetector(
                            key: Key(index.toString()),
                            child: index == 0
                                ? Padding(
                                    padding: const EdgeInsets.only(
                                            left: 16, right: 30)
                                        .r,
                                    child: slider[index],
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(right: 30).r,
                                    child: slider[index],
                                  ),
                            onVisibilityChanged: (VisibilityInfo info) {
                              if (info.visibleFraction == 1) {
                                cardsPageIncdicatorProvider.changeIndex(index);
                              }
                            });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Consumer<CardsPageIndicatorProvider>(
                    builder: (context, value, child) => AnimatedSmoothIndicator(
                      duration: const Duration(milliseconds: 0),
                      activeIndex: value.pageviewIndex,
                      count: slider.length,
                      effect: SlideEffect(
                          dotWidth: 16.67.w,
                          dotHeight: 2.h,
                          dotColor: Color(0xff8E8E8E),
                          activeDotColor: Color(0xff046AE1)),
                    ),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  Container(
                    width: 351.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10).r)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16).r,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 35, top: 22).r,
                              child: Text(
                                'Recent Transactions',
                                style: TextStyle(
                                    color: Color(0xff333333),
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: gelion),
                              ),
                            ),
                          ),
                        ),
                        RecentTransactions(
                          islineThrough: false,
                          isReceived: true,
                          isDollar: true,
                        ),
                        RecentTransactions(
                          islineThrough: true,
                          isReceived: false,
                          isDollar: false,
                          amount: '10,000',
                        ),
                        RecentTransactions(
                          islineThrough: true,
                          isReceived: true,
                          isDollar: false,
                          amount: '4,500,000',
                        ),
                        RecentTransactions(
                          islineThrough: true,
                          isReceived: false,
                          isDollar: false,
                          amount: '10,000',
                        ),
                        RecentTransactions(
                          islineThrough: true,
                          isReceived: true,
                          isDollar: false,
                          amount: '2,000',
                        ),
                        SizedBox(
                          height: 49.h,
                        ),
                        TextButton(
                            onPressed: () {
                              Get.toNamed(view_all_transactions);
                            },
                            style: TextButton.styleFrom(
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                minimumSize: Size.zero),
                            child: Text(
                              'View All',
                              style: TextStyle(
                                  color: greenColor1,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: circularStd),
                            )),
                        SizedBox(
                          height: 15.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
