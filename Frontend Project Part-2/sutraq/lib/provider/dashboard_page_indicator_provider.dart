import 'package:flutter/foundation.dart';
import 'package:sutraq/models/dashboard_page_indicator_model.dart';

class DashboardPageIndicatorProvider extends ChangeNotifier {
  final DashboardPageIndicatorModel _indicatorIndex =
      DashboardPageIndicatorModel(value: 0);
  int get pageviewIndex => _indicatorIndex.value;
  changeIndex(e) {
    _indicatorIndex.value = e;
    notifyListeners();
  }
}
