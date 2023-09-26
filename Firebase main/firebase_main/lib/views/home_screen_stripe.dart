import 'package:firebase_main/controller/payment_controller.dart';
import 'package:flutter/material.dart';

class HomeScreenStripe extends StatefulWidget {
  const HomeScreenStripe({super.key});

  @override
  State<HomeScreenStripe> createState() => _HomeScreenStripeState();
}

class _HomeScreenStripeState extends State<HomeScreenStripe> {
  var obj = PaymentController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            obj.makePayment(amount: '5', currency: 'USD');
          },
          child: Text('Make A Payment'),
        ),
      ),
    );
  }
}
