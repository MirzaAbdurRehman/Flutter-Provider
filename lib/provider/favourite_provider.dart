import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItem = [];

  List<int> get selectedItem  => _selectedItem;

  void addItem(int value){
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value){
    _selectedItem.remove(value);
    notifyListeners();
  }
}