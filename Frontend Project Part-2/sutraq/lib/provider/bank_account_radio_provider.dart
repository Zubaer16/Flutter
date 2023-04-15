import 'package:flutter/foundation.dart';
import 'package:sutraq/models/bank_account_radio_model.dart';

class BankAccountRadioProvider extends ChangeNotifier {
  // String _radioValue = '';
  // String get radioValue => _radioValue;
  // changeValue(e) {
  //   _radioValue = e;
  //   notifyListeners();
  final BankAccountRadioModel _radioValue = BankAccountRadioModel(value: '');
  String get radioValue => _radioValue.value;
  changeValue(e) {
    _radioValue.value = e;
    notifyListeners();
  }
}
