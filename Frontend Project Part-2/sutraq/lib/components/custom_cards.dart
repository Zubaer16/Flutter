import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/storage/font_storage.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({Key? key, required this.dots, this.color})
      : super(key: key);
  final bool dots;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151.h,
      width: 270.w,
      padding: const EdgeInsets.fromLTRB(20, 23, 20, 22).r,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('images/path5.png'), fit: BoxFit.fill),
          color: color ?? const Color(0xff063593),
          borderRadius: BorderRadius.all(const Radius.circular(15).r)),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/visa.png',
                  height: 12.h,
                  width: 38.w,
                ),
                if (dots)
                  Image.asset(
                    'images/combinedShape.png',
                    height: 4.h,
                    width: 18.w,
                  )
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            Text('CARD NUMBER',
                style: TextStyle(
                    color: const Color(0xffFEFEFE).withOpacity(0.5),
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: circularStd)),
            SizedBox(
              height: 2.h,
            ),
            Text('**** **** **** *379',
                style: TextStyle(
                    color: const Color(0xffFEFEFE),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: circularStd)),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('CARD HOLDER NAME',
                    style: TextStyle(
                        color: const Color(0xffFEFEFE).withOpacity(0.5),
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: circularStd)),
                Text('EXPIRE DATE',
                    style: TextStyle(
                        color: const Color(0xffFEFEFE).withOpacity(0.5),
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: circularStd)),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Precious Ogar',
                    style: TextStyle(
                        color: const Color(0xffFEFEFE),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: circularStd)),
                Text('02/25',
                    style: TextStyle(
                        color: const Color(0xffFEFEFE),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: circularStd)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
