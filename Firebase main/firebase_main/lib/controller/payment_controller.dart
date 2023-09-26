import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as https;

class PaymentController {
  Map<String, dynamic>? paymentIntentData;

  Future<void> makePayment(
      {required String amount, required String currency}) async {
    try {
      paymentIntentData = await createPaymentIntent(amount, currency);
      if (paymentIntentData != null) {
        await Stripe.instance.initPaymentSheet(
            paymentSheetParameters: SetupPaymentSheetParameters(
                applePay: PaymentSheetApplePay(merchantCountryCode: 'US'),
                googlePay: PaymentSheetGooglePay(merchantCountryCode: 'US'),
                merchantDisplayName: 'Prospects',
                customerId: paymentIntentData!['customer'],
                paymentIntentClientSecret: paymentIntentData!['client_secret'],
                customerEphemeralKeySecret:
                    paymentIntentData!['ephemeralKey']));
      }
    } catch (e, s) {
      print('exception: $e$s');
    }
  }

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      print('payment successful');
    } on Exception catch (e) {
      if (e is StripeConfigException) {
        print('Error from Stripe: ${e}');
      } else {
        print('Unforseen error: ${e}');
      }
    } catch (e) {
      print('exception: $e');
    }
  }

  //Future map string dynamic
  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      var response = await https.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        body: body,
        headers: {
          'Authorization':
              'sk_test_51NuG9RCE3LCEeQ9ntBwMvStNEn3ivLj4ese7ddaD4UyFMXUkCkRYhqbrCB8k1P5gwax7cAl2SGsN65nmGzvDGHDd00HS0ikYaA'
        },
      );
      return jsonDecode(response.body);
    } catch (err) {
      print('err charging user: ${err.toString()}');
    }
  }

  calculateAmount(String amount) {
    final a = (int.parse(amount)) * 100;
    return a.toString();
  }
}
