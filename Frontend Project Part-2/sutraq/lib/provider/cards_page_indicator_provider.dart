import 'package:flutter/foundation.dart';
import 'package:sutraq/models/cards_page_indicator_model.dart';

class CardsPageIndicatorProvider extends ChangeNotifier {
  final CardsPageIndicatorModel _indicatorIndex =
      CardsPageIndicatorModel(value: 0);
  int get pageviewIndex => _indicatorIndex.value;
  changeIndex(e) {
    _indicatorIndex.value = e;
    notifyListeners();
  }
}
