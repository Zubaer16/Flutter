import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violet_button.dart';

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key, required this.user});
  final User? user;

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  bool isEmailVerified = false;
  Timer? timer;
  @override
  void initState() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      return checkEmailVerified();
    });

    super.initState();
  }

  void checkEmailVerified() async {
    await widget.user!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) {
      bool isCollExists = await _isCollectionExits();
      final box = GetStorage();
      Fluttertoast.showToast(msg: "Email Successfully Verified");
      if (isCollExists) {
        box.write('introPage', 3);
        Get.toNamed(privacyPolicy);
        timer?.cancel();
      } else {
        box.write('introPage', 2);
        Get.toNamed(userForm);
        timer?.cancel();
      }
    }
  }

  Future<bool> _isCollectionExits() async {
    DocumentSnapshot<Map<String, dynamic>> query = await FirebaseFirestore
        .instance
        .collection('users-form-data')
        .doc(widget.user?.email.toString())
        .get();

    if (query.exists) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Please verify your email',
                style: AppStyles.textStyleB27B,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text(
                'You\'re almost there! We sent an email to',
                textAlign: TextAlign.center,
              ),
              Text(
                widget.user!.email.toString(),
                style: AppStyles.textStyleB17B,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20).r,
                child: const Text(
                  'Just click on the link in that email to complete your signup. If you don\'t see it you may need to check your spam folder.',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              const Text(
                'Still can\'t find the email?',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                  width: 200.w,
                  child: VioletButton(
                      title: 'Resend Email',
                      onAction: () {
                        widget.user?.sendEmailVerification();
                      },
                      value: false.obs))
            ]),
      ),
    );
  }
}
