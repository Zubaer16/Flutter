import 'package:flutter/foundation.dart';
import 'package:sutraq/models/walkthrough_screen_model.dart';

class WalkthroughScreenProvider extends ChangeNotifier {
  final WalkthroughScreenModel _pageviewIndex =
      WalkthroughScreenModel(value: 0);
  int get pageviewIndex => _pageviewIndex.value;
  changeIndex(e) {
    _pageviewIndex.value = e;
    notifyListeners();
  }
}
