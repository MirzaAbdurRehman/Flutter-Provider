import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class  Multiple_screen_provider with ChangeNotifier{


  double _value = 1.0;
  double get value => _value;


  void setValue(double val){
    _value = val;
    notifyListeners();
  }
}