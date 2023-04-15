import 'package:flutter/foundation.dart';
import 'package:sutraq/models/debit_credit_card_radio_model.dart';

class DebitCreditCardRadioProvider extends ChangeNotifier {
  final DebitCreditCardRadioModel _radioValue =
      DebitCreditCardRadioModel(value: '1st Card');
  String get radioValue => _radioValue.value;
  changeValue(e) {
    _radioValue.value = e;
    notifyListeners();
  }
}
