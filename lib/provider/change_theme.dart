import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Theme_Changer_Provider with ChangeNotifier{

  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }

}