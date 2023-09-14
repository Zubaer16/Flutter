import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_main/views/home_screen.dart';
import 'package:flutter/material.dart';

class AuthHelperPhone {
  FirebaseAuth auth = FirebaseAuth.instance;
  final TextEditingController _otpController = TextEditingController();
  phoneAuth(number, context) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: number,
      verificationCompleted: (PhoneAuthCredential credential) async {
        UserCredential userCredential =
            await auth.signInWithCredential(credential);
        User? user = userCredential.user;
        if (user!.uid.isNotEmpty) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => HomeScreen(
                        user: user,
                      )));
        } else {
          print('failed');
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
            builder: (_) => AlertDialog(
                  title: Text('Enter your otp'),
                  content: Column(
                    children: [
                      TextField(
                        controller: _otpController,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            PhoneAuthCredential phoneAuthCredential =
                                PhoneAuthProvider.credential(
                                    verificationId: verificationId,
                                    smsCode: _otpController.text);
                            UserCredential userCredential = await auth
                                .signInWithCredential(phoneAuthCredential);
                            User? user = userCredential.user;
                            if (user!.uid.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomeScreen(
                                            user: user,
                                          )));
                            } else {
                              print('failed');
                            }
                          },
                          child: Text('Continue'))
                    ],
                  ),
                ));
      },
      timeout: Duration(seconds: 60),
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
