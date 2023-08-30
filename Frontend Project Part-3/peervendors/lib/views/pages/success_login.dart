import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peervendors/route/route_manage.dart';
import 'package:peervendors/views/components/success_message.dart';

class SuccessLogin extends StatefulWidget {
  const SuccessLogin({super.key});

  @override
  State<SuccessLogin> createState() => _SuccessLoginState();
}

class _SuccessLoginState extends State<SuccessLogin> {
  Timer? pageChangeTimer;

  @override
  void initState() {
    pageChangeTimer =
        Timer(const Duration(seconds: 1), () => Get.toNamed(dashboardScreen));
    super.initState();
  }

  @override
  void dispose() {
    pageChangeTimer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SuccessMessage());
  }
}
