import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
	final List _shopItems = [
		["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
		["Banana", "2.40", "lib/images/banana.png", Colors.yellowAccent],
		["Chicken", "12.00", "lib/images/chicken.png", Colors.blue],
		["Water", "1.00", "lib/images/water.png", Colors.red],
	];
	get shopItem => _shopItems;
}