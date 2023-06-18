import 'package:flutter/material.dart';
import 'package:peervendors/models/onboarding_screen_model.dart';

class OnboardingScreenProvider extends ChangeNotifier {
  final _onboardingScreenProvider = OnboardingScreenModel(pageIndex: 0);

  int get getValue {
    return _onboardingScreenProvider.getIndex;
  }

  set setValue(int setIndex) {
    _onboardingScreenProvider.setIndex = setIndex;
    notifyListeners();
  }
}
