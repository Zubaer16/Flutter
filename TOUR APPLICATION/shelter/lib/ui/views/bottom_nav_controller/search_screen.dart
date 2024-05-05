import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_icons.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50).r,
          child: Column(children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Search for your next tour',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(AppIcons.searchOutlined),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
