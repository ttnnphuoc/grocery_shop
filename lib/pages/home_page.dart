import 'package:flutter/material.dart';
import 'package:flutter_grocery_shop/components/grocery_item_tile.dart';
import 'package:flutter_grocery_shop/model/cart_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
		child: Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				const SizedBox(height: 48,),
				// Good morning
				const Padding(
					padding: EdgeInsets.symmetric(horizontal: 24.0),
					child: Text("Good morning, Phuoc",
					style: TextStyle(
						color: Colors.grey
					),),
				),
				// let's order
				Padding(
					padding: const EdgeInsets.symmetric(horizontal: 24.0),
					child: Text(
						"Let's order fresh items for you",
						style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
					),
				),
				const SizedBox(height: 24,),
				const Padding(
						padding: EdgeInsets.symmetric(horizontal: 24),
						child: Divider(
							thickness: 10,
						),
					),
				const SizedBox(height: 24,),
			// fresh item + grid
			const Padding(
				padding: EdgeInsets.symmetric(horizontal: 24),
				child: Text("Items"),),
				Expanded(
					child: Consumer<CartModel>(
						builder: (context, value, child) {
							return GridView.builder(
								itemCount: value.shopItem.length,
								gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 	2), 
								itemBuilder: (context, index) {
									return GroceryItemTile(
										itemName: value.shopItem[index][0],
										itemPrice: value.shopItem[index][1], 
										color: value.shopItem[index][3], 
										imgPath: value.shopItem[index][2]);
								});
						})
				)
		  ],
		),
	  ));
  }
}