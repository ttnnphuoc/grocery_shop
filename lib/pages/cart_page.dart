import 'package:flutter/material.dart';
import 'package:flutter_grocery_shop/model/cart_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
	const CartPage({super.key});
	@override
  Widget build(BuildContext context) {
	return Scaffold(
		appBar: AppBar(
			title: Text("My Cart"),
			backgroundColor: Colors.green,
		),
		body: Consumer<CartModel>(
			builder: (context, value, index) {
				return Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Padding(
							padding: const EdgeInsets.symmetric(horizontal: 24.0),
							child: Text(
								"My Cart",
								style: GoogleFonts.notoSerif(fontSize: 36, fontWeight: FontWeight.bold),
							),
						),
						// List of cart item
						Expanded(
							child: ListView.builder(
								itemCount: value.cartItems.length,
								itemBuilder: (context, index) {
									return Padding(
													padding: const EdgeInsets.all(12),
													child: Container(
													decoration: BoxDecoration(
														color: Colors.grey[200],
														borderRadius: BorderRadius.circular(12)
														),
														child: ListTile(
															leading: Image.asset(
																value.cartItems[index][2],
																height: 36,),
															title: Text(value.cartItems[index][0],),
															subtitle: Text( '\$' + value.cartItems[index][1]),
															trailing: IconButton(
																onPressed: () => 
																	Provider.of<CartModel>(context, listen:  false).removeItemFromCart(index), 
																icon: Icon(Icons.cancel)),
														),
													),
												);
								})
							),
              // Total + Pay now
              Padding(
                padding: const EdgeInsets.all(36),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Price",
                          style: TextStyle(color: Colors.green[100]),),
                          const SizedBox(height: 4,),
                          Text(
                           '\$' +  value.caculateTotal(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          )
                        ],
                      ),
                      // Pay now
					Container(
								decoration: BoxDecoration(
									border: Border.all(color: Colors.white),
									borderRadius: BorderRadius.circular(12)
								),
								padding: EdgeInsets.all(12),
								child: const Row(
									children: [
										Text(
										"Pay Now",
										style: TextStyle(color: Colors.white),
										),
									Icon(
										Icons.arrow_forward_ios,
										size: 16,
										color: Colors.white,
									)
									],
								)
						),
                    ],
                  ),
                ),)
						],
					);
				},
			),
	);
  }
}