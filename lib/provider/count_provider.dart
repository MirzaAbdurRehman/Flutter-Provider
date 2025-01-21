import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Count_Provider with ChangeNotifier{

  int _count = 0;
  int get count => _count;

  void setCountIncreament(){
    _count++;
    notifyListeners();
  }

  void setCountDecreament(){
    _count--;
    notifyListeners();
  }
}