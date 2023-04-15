import 'package:flutter/foundation.dart';
import 'package:sutraq/models/switch_model.dart';

class SwitchProvider extends ChangeNotifier {
  final SwitchModel _switchValue = SwitchModel(value: false);
  bool get switchValue => _switchValue.value;

  changeSwitchValue(e) {
    _switchValue.value = e;
    notifyListeners();
  }
}
