import 'package:flutter/material.dart';

class Data with ChangeNotifier {
  int value = 0;

  increment() {
    value++;
    notifyListeners();
  }
}
