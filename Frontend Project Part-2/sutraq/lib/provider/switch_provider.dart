import 'package:flutter/foundation.dart';

class SwitchProvider extends ChangeNotifier {
  bool _switchValue = false;
  bool get switchValue => _switchValue;

  changeSwitchValue(e) {
    _switchValue = e;
    notifyListeners();
  }
}
