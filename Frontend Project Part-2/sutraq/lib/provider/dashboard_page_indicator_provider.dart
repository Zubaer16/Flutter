import 'package:flutter/foundation.dart';

class DashboardPageIndicatorProvider extends ChangeNotifier {
  int _indicatorIndex = 0;
  int get pageviewIndex => _indicatorIndex;
  changeIndex(e) {
    _indicatorIndex = e;
    notifyListeners();
  }
}
