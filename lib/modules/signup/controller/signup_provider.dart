import 'package:flutter/material.dart';

class SignupProvider extends ChangeNotifier {
  bool showPw = true;
  bool showConfPw = true;
  void changePasswordShow(bool val) {
    showPw = val;
    notifyListeners();
  }

  void changeConfPassShow(bool val) {
    showConfPw = val;
    notifyListeners();
  }
}
