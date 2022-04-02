import 'package:flutter/foundation.dart';

class Counter extends ChangeNotifier{
  int _value=0;

  int get value => _value;

  set value(int value) {
    _value = value;
  }
  void increament(){
    _value++;
    notifyListeners();
  }
}