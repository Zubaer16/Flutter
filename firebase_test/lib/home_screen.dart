import 'package:firebase_test/auth_helper_email.dart';
import 'package:firebase_test/auth_helper_phone.dart';
import 'package:firebase_test/login_screen.dart';
import 'package:flutter/material.dart';
import 'auth_helper_google.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _emailPassword = TextEditingController();

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
              ElevatedButton(
                  onPressed: () {
                    AuthHelperEmail().singUpWithEmailPassword(
                        _email.text, _emailPassword.text, context);
                  },
                  child: const Text('Sign up')),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => LoginScreen()));
                  },
                  child: const Text('Already have an account? Login here')),
              const Text(
                'OR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
              ElevatedButton(
                  onPressed: () {
                    AuthHelperPhone().verifyPhone(_phoneNumber.text, context);
                  },
                  child: const Text('Sign in')),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'OR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              ElevatedButton(
                  onPressed: () {
                    AuthHelperGoogle().signInWithGoogle(context);
                  },
                  child: const Text('Sign in with google')),
            ],
          ),
        )),
      ),
    );
  }
}
