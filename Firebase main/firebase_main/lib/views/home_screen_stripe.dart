import 'package:flutter/material.dart';

class HomeScreenStripe extends StatefulWidget {
  const HomeScreenStripe({super.key});

  @override
  State<HomeScreenStripe> createState() => _HomeScreenStripeState();
}

class _HomeScreenStripeState extends State<HomeScreenStripe> {
  // var obj = PaymentController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // obj.make
          },
          child: Text('Make A Payment'),
        ),
      ),
    );
  }
}
