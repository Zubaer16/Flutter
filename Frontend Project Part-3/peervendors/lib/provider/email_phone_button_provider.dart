import 'package:flutter/cupertino.dart';
import 'package:peervendors/models/email_phone_button_model.dart';

class EmailPhoneButtonProvider extends ChangeNotifier {
  final buttonText = EmailPhoneButtonModel(buttonText: 'phone');
  String get getValue => buttonText.buttonText;
  set setValue(setVal) {
    buttonText.buttonText = setVal;
    notifyListeners();
  }
}
