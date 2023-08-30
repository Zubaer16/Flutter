import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/views/components/success_message.dart';

class SuccessChooseImage extends StatefulWidget {
  const SuccessChooseImage({super.key});

  @override
  State<SuccessChooseImage> createState() => _SuccessChooseImageState();
}

class _SuccessChooseImageState extends State<SuccessChooseImage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () => Get.toNamed(dashboardScreen));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SuccessMessage());
  }
}
