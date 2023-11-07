import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_test/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _phonePassword = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _emailPassword = TextEditingController();

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
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Please sign up first',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextFormField(
                    controller: _phoneNumber,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Enter your phone number',
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextFormField(
                    controller: _phonePassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      hintText: 'Enter password',
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Sign up')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  child: TextFormField(
                    controller: _emailPassword,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: const InputDecoration(
                      hintText: 'Enter password',
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: const Text('Sign up')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                  onPressed: () {
                    signInWithGoogle(context);
                  },
                  child: const Text('Sign in with google')),
              TextButton(
                  onPressed: () {},
                  child: const Text('Already have an account? Login here'))
            ],
          ),
        )),
      ),
    );
  }
}
