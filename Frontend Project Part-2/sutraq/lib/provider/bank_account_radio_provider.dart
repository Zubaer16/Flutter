import 'package:flutter/foundation.dart';

class BankAccountRadioProvider extends ChangeNotifier {
  String _radioValue = '';
  String get radioValue => _radioValue;
  changeValue(e) {
    _radioValue = e;
    notifyListeners();
  }
}
