import 'package:flutter/foundation.dart';

class DebitCreditCardRadioProvider extends ChangeNotifier {
  String _radioValue = '1st Card';
  String get radioValue => _radioValue;
  changeValue(e) {
    _radioValue = e;
    notifyListeners();
  }
}
