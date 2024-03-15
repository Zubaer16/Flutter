import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/get_state/button_loading_state.dart';
import 'package:shelter/get_state/server_state.dart';
import 'package:shelter/ui/routes/route.dart';
import 'package:shelter/ui/views/verify_email.dart';

class Auth {
  final box = GetStorage();

  Future<void> registration(
      String emailAddress, String password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
      var authCredential = userCredential.user;
      if (authCredential!.uid.isNotEmpty && !authCredential.emailVerified) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => VerifyEmail(
                      user: authCredential,
                    )));
        authCredential.sendEmailVerification();
      } else if (authCredential.uid.isNotEmpty &&
          authCredential.emailVerified) {
        Fluttertoast.showToast(msg: 'Registration Successful');
        box.write('uid', authCredential.uid);
        box.write('introPage', 2);
        Get.toNamed(userForm);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'Password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      Fluttertoast.showToast(msg: 'Error is $e');
    }
  }

  Future<void> login(String emailAddress, String password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty && !authCredential.emailVerified) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => VerifyEmail(
                      user: authCredential,
                    )));
      } else if (authCredential.uid.isNotEmpty) {
        Fluttertoast.showToast(msg: 'Login Successfull');
        Get.toNamed(bottomNavController);
      }
    } catch (e) {
      final connectivityResult = await (Connectivity().checkConnectivity());
      ButtonLoadingState.loginValue.value = false;
      if (connectivityResult != ConnectivityResult.wifi &&
          connectivityResult != ConnectivityResult.ethernet &&
          connectivityResult != ConnectivityResult.mobile) {
        Fluttertoast.showToast(msg: 'Please check your internet connection');
      } else {
        ServerState.loginState.value = true;
        Fluttertoast.showToast(msg: 'Username and password do not match');
      }
    }
  }
}
