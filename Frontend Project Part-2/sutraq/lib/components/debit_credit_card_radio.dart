import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/components/custom_cards.dart';
import 'package:sutraq/storage/color_storage.dart';
import 'package:sutraq/storage/icon_storage.dart';

class DebitCredidCardRadio extends StatelessWidget {
  const DebitCredidCardRadio({Key? key, this.cardColor}) : super(key: key);
  final Color? cardColor;
  final bool myvalue = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: 20.h,
              width: 20.h,
              decoration: BoxDecoration(
                border:
                    Border.all(color: myvalue ? Color(0xff666666) : greenColor),
                shape: BoxShape.circle,
              ),
              child: Icon(
                check,
                color: myvalue ? Colors.white : greenColor,
                size: 17.w,
              ),
            ),
            SizedBox(
              width: 14.w,
            ),
            Text(
              'Set as default',
              style: TextStyle(
                color: Color(0xff000000).withOpacity(.5),
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 13.h,
        ),
        CustomCards(dots: false, color: cardColor
            // Color(0xff330693),
            ),
        TextButton(
            onPressed: () => {},
            style: TextButton.styleFrom(
                padding: EdgeInsets.fromLTRB(10, 12, 10, 24),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: Size.zero),
            child: Text(
              'Remove',
              style: TextStyle(
                  color: Color(0xffEC615B),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline),
            )),
      ],
    );
  }
}
