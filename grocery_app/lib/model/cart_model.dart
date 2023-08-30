import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // list of item
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green.shade600],
    ["Banana", "12.00", "assets/images/banana.png", Colors.amber.shade600],
    ["Orange", "9.00", "assets/images/orange.png", Colors.blue.shade600],
    ["Grape", "100.00", "assets/images/grape.png", Colors.purple.shade600],
    ["Pineaple", "10.00", "assets/images/pineaple.png", Colors.brown.shade600],
    [
      "Dragon Fruit",
      "10.00",
      "assets/images/dragon-fruit.png",
      Colors.red.shade600
    ],
  ];

  // list of card
  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add items
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove items
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate

  String calculateTotal() {
    double totalPrice = 0;

    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
