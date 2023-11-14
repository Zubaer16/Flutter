import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelperGoogle {
  Future signInWithGoogle(context) async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    UserCredential? userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    User? user = userCredential.user;

    if (user!.uid.isNotEmpty) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DashBoardScreen(googleUser: user)));
    }
    // Once signed in, return the UserCredential
  }
}
