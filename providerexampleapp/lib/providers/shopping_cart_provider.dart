import 'dart:ffi';

import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> _shopping_cart = ['apple', 'oranges', 'banana'];

  int get count => _shopping_cart.length;
  List<String> get cart => _shopping_cart;

  void addItem(String Item) {
    _shopping_cart.add(Item);
    notifyListeners();
  }
}
