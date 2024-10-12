import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
	final List _shopItems = [
		["Avocado", "4.00", "lib/images/avocado.png", Colors.green, 1],
		["Banana", "2.40", "lib/images/banana.png", Colors.yellowAccent, 1],
		["Chicken", "12.00", "lib/images/chicken.png", Colors.blue, 1],
		["Water", "1.00", "lib/images/water.png", Colors.red, 1],
	];

	// List of cart items
	List _cartItems = [];

	get shopItem => _shopItems;

	get cartItems => _cartItems;

	// Add item to cart
	void addItemToCart(int index) {
		_cartItems.add(_shopItems[index]);
    notifyListeners();
	}

	// Remove item from cart
	void removeItemFromCart(int index) {
		_cartItems.removeAt(index);
    notifyListeners();
	}

	// Calculate total price
	String caculateTotal() {
		double totalPrice = 0;
		for (var i = 0; i < _cartItems.length; i++) {
			totalPrice += double.parse(_cartItems[i][1]);
		}
		return  totalPrice.toString();
	}
}