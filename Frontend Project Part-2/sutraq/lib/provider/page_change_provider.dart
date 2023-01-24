import 'package:flutter/foundation.dart';

class PageChangeProvider extends ChangeNotifier {
  int _pageValue = 0;
  get pageValue => _pageValue;
  changePage(e) {
    _pageValue = e;
    notifyListeners();
  }
}
