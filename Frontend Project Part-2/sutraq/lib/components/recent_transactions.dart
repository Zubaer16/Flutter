import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions(
      {Key? key,
      required this.islineThrough,
      required this.isReceived,
      required this.isDollar,
      this.amount})
      : super(key: key);

  final bool islineThrough;
  final bool isReceived;
  final bool isDollar;
  final String? amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: 303.w,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
        color: Color(0xffDEDEDE).withOpacity(.4),
      ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  height: 24.h,
                  width: 24.w,
                  child: Stack(children: [
                    Image.asset(
                      isReceived
                          ? 'images/incomingBackground.png'
                          : 'images/outgoingBackground.png',
                      height: 24.h,
                      width: 24.w,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        isReceived
                            ? 'images/incoming.png'
                            : 'images/outgoing.png',
                        height: 8.75.h,
                        width: 8.75.w,
                      ),
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 4).r,
                        child: Text(
                          isReceived ? 'Access Bank' : 'Alpha Loans',
                          style: TextStyle(
                              color: Color(0xff0A004A),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Text(
                        '28, Jan 2020',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xff929292).withOpacity(.7),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                isDollar ? '\$' : 'N',
                style: TextStyle(
                    decoration:
                        islineThrough ? TextDecoration.lineThrough : null,
                    decorationColor: Color(0xff0A004A),
                    decorationThickness: 2,
                    color: Color(0xff0A004A),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                amount ?? '2400',
                style: TextStyle(
                    color: Color(0xff0A004A),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
