import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool valueRemember = false;
  bool showPw = true;

  void changeRemember(bool val) {
    valueRemember = val;
    notifyListeners();
  }

  void changePasswordShow(bool val) {
    showPw = val;
    notifyListeners();
  }
}
