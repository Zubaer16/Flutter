import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AuthHelperPhone {
  Future verifyPhone(phone, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        UserCredential _userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        User? user = _userCredential.user;
        if (user!.uid.isNotEmpty) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DashBoardScreen(
                        phoneUser: phone,
                      )));
        }
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      timeout: Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
