import 'package:flutter/material.dart';
import 'package:flutter_grocery_shop/model/cart_model.dart';
import 'package:flutter_grocery_shop/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: 
        const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
      ),);
  }
}
