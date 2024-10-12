import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imgPath;
  final color;

  const GroceryItemTile(
    {
		super.key,
		required this.itemName,
		required this.itemPrice,
		required this.color,
		required this.imgPath
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
	  padding: const EdgeInsets.all(12.0),
	  child: Container(
			decoration: BoxDecoration(
				color: color[100],
				borderRadius: BorderRadius.circular(12),
			),
			child: Column(
				children: [
					Image.asset(
						imgPath,
						height: 64,),
					
				],
			),
		),
	);
  }
}