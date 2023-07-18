import 'package:flutter/material.dart';
import 'package:peervendors/models/language_radio_model.dart';

class LanguageRadioProvider extends ChangeNotifier {
  final LnaguageRadioModel _radioValue = LnaguageRadioModel(language: '');
  String get radioValue => _radioValue.language;
  set changeValue(value) {
    _radioValue.language = value;
    notifyListeners();
  }
}
