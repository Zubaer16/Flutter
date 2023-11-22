import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AuthHelperPhone {
  final TextEditingController _otpController = TextEditingController();

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
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text('Enter verification code'),
                content: Column(children: [
                  TextFormField(
                    controller: _otpController,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        PhoneAuthCredential credential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId,
                                smsCode: _otpController.text);

                        UserCredential _userCredential = await FirebaseAuth
                            .instance
                            .signInWithCredential(credential);
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
                      child: Text('Submit'))
                ]),
              );
            });
      },
      timeout: Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
