import 'package:flutter/foundation.dart';
import 'package:sutraq/models/bank_account_radio_model.dart';

class BankAccountRadioProvider extends ChangeNotifier {
  String _radioValue = '';
  String get radioValue => _radioValue;
  String myValues = 'hi';
  changeValue(e) {
    _radioValue = e;
    notifyListeners();
  }

  changeValues(texts) {
    BankAccountRadioModel myModel = BankAccountRadioModel(values: texts);
    myValues = myModel.values;
    notifyListeners();
  }
}
