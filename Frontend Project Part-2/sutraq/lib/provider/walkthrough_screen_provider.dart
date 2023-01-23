import 'package:flutter/foundation.dart';
import 'package:sutraq/provider/walkthrough_screen_class.dart';

class WalkthroughScreenProvider extends ChangeNotifier {
  int _pagIndex = 0;
  int get pagIndex => _pagIndex;
  void changeIndex(e) {
    _pagIndex = e;
    ChangeNotifier();
  }
}
