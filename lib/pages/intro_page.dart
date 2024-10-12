import 'package:flutter/material.dart';
import 'package:flutter_grocery_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
	const IntroPage({super.key});

	@override
  Widget build(BuildContext context) {
    return Scaffold(
		body: Column(
			children: [
				// logo
				Padding(
					padding: const EdgeInsets.only(
						left: 80, right:80, top: 140, bottom: 40
					),
					child: Image.asset('lib/images/avocado.png'),
				),
				const Padding(
					padding: EdgeInsets.all(8.0),
					child: Text(
						"We deliver grocery at your doorstep",
						textAlign: TextAlign.center,
						style: TextStyle(
							fontSize: 30,
							fontWeight: FontWeight.bold
						),
					),
				),
				const SizedBox(height: 16,),
				const Text(
					textAlign: TextAlign.center,
						"Groceer gives you fresh vegetables and fruits",
						style: TextStyle(
						fontSize: 12
					)),
				const Text(
					textAlign: TextAlign.center,
						"Order fresh items from groceer",
						style: TextStyle(
						fontSize: 12
					)),

				const Spacer(),
				// Get start button
				GestureDetector(
					onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
						builder: (context) {
							return const HomePage();
						})),
					child: Container(
						decoration: BoxDecoration(
							color: Colors.deepPurple,
							borderRadius: BorderRadius.circular(12)
						),
						padding: const EdgeInsets.all(24),
						child: const Text("Get Started",
							style: TextStyle(
								fontSize: 16,
								color: Colors.white
								),),
					),
				),
				const Spacer()
			],
		),
	);
  }
}