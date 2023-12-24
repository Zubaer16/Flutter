import 'package:flutter/services.dart';
import 'package:shelter/models/onboarding_model.dart';

class OnboardingHelper {
  Future<dynamic> readJson() async {
    final String response =
        await rootBundle.loadString('assets/files/onboarding.json');
    return onboardingModelFromJson(response);
  }
}
