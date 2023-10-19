import 'package:flutter/material.dart';
import 'package:flutter_coffee/order_placed.dart';
import 'package:flutter_coffee/place_order.dart';
import 'package:flutter_coffee/products.dart';
import 'package:flutter_coffee/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/product_selection': (context) => ProductSelection(),
        '/order_confirmation': (context) => OrderConfirmationScreen(),
        '/final_screen': (context) => FinalScreen(),
      },
    );
  }
}
