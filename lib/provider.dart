import 'package:flutter/material.dart';

class Change extends ChangeNotifier {
  TextEditingController value = TextEditingController();

  void valuePass( newValue) {
    value.text = newValue; 
    notifyListeners();
  }
}
