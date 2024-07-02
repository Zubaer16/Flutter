import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/drawer_item.dart';

class Setting extends StatelessWidget {
  Setting({super.key});
  final RxBool darkMode = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: AppStyles.textStyleB20400,
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dark Mode',
                    style: AppStyles.textStyleB20400,
                  ),
                  Obx(() => Switch(
                      value: darkMode.value,
                      onChanged: (bool value) => darkMode.value = value))
                ],
              ),
              drawerItem('Logout', () => {}),
              drawerItem('Profile', () => {}),
              drawerItem('Languages', () => {}),
            ],
          ),
        ));
  }
}
