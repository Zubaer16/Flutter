import 'package:flutter/foundation.dart';
import 'package:sutraq/models/wallet_page_indicator_model.dart';

class WalletPageIndicatorProvider extends ChangeNotifier {
  final WalletPageIndicatorModel _indicatorIndex =
      WalletPageIndicatorModel(value: 0);
  int get pageviewIndex => _indicatorIndex.value;
  changeIndex(e) {
    _indicatorIndex.value = e;
    notifyListeners();
  }
}
