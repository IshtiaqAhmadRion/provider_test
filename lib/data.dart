import 'package:flutter/material.dart';

class Data with ChangeNotifier {
  int value = 0;
  int add = 0;

  increment() {
    value++;

    notifyListeners();
  }

  adder() {
    
    add = value + 2;
    notifyListeners();
  }
}
