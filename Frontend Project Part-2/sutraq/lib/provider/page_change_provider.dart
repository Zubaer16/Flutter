import 'package:flutter/foundation.dart';
import 'package:sutraq/models/page_change_model.dart';

class PageChangeProvider extends ChangeNotifier {
  final PageChangeModel _pageValue = PageChangeModel(value: 0);
  int get pageValue => _pageValue.value;
  changePage(e) {
    _pageValue.value = e;
    notifyListeners();
  }
}
