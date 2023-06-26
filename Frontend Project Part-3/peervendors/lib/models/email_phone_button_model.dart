class EmailPhoneButtonModel {
  String buttonText;
  EmailPhoneButtonModel({required this.buttonText});

  String get getValue {
    return buttonText;
  }

  set setValue(setval) {
    buttonText = setval;
  }
}
