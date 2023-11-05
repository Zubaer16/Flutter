import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please sign up first',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Enter your phone number',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Sign up')),
            SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Sign up')),
            SizedBox(
              height: 10,
            ),
            Text(
              'OR',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
                onPressed: () {
                  signInWithGoogle(context);
                },
                child: Text('Sign up with google')),
            TextButton(
                onPressed: () {},
                child: Text('Already have an account? Login here'))
          ],
        )),
      ),
    );
  }
}
