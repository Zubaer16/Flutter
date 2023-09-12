import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_main/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  Future signUp(email, password, context) async {
    final box = GetStorage();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        box.write('id', authCredential.uid);
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen()));
      } else
        print('sign up failed');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('e');
    }
  }

  Future signIn(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen()));
      } else
        print('sign in failed');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print('e');
    }
  }

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

    UserCredential _userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    User? _user = _userCredential.user;

    if (_user!.uid.isNotEmpty) {
      Navigator.push(
          context,
          CupertinoPageRoute(
              builder: (_) => HomeScreen(
                    user: _user,
                  )));
    } else {
      print('something is wrong');
    }
  }
}
