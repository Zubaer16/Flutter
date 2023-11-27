import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';

class AuthHelperEmail {
  Future<void> singUpWithEmailPassword(
      String email, String passowrd, context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: passowrd,
      );
      var authCredential = credential.user;
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => DashBoardScreen(
                      emailPasswordUser: authCredential,
                    )));
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
