import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peervendors/views/components/success_message.dart';

import '../../route/route_manage.dart';

class SuccessRegistration extends StatefulWidget {
  const SuccessRegistration({super.key});

  @override
  State<SuccessRegistration> createState() => _SuccessRegistrationState();
}

class _SuccessRegistrationState extends State<SuccessRegistration> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () => Get.toNamed(loginScreen));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SuccessMessage());
  }
}
