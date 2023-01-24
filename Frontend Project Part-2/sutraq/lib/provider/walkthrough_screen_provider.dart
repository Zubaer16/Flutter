import 'package:flutter/foundation.dart';

class WalkthroughScreenProvider extends ChangeNotifier {
  int _pageviewIndex = 0;
  int get pageviewIndex => _pageviewIndex;
  changeIndex(e) {
    _pageviewIndex = e;
    notifyListeners();
  }
}
