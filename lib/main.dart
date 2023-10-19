import 'package:flutter/material.dart';
import 'dart:math';
import 'coffee_drink.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/product_selection': (context) => ProductSelection(),
        '/order_confirmation': (context) => OrderConfirmation(),
        '/final_screen': (context) => FinalScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to KaffiKrútur!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/product_selection');
              },
              child: Text('Order Coffee'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductSelection extends StatelessWidget {
  final drinks = getCoffeeDrinks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Product'),
      ),
      body: ListView.builder(
          itemCount: drinks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(drinks[index].name),
              onTap: () {
                Navigator.pushNamed(context, '/order_confirmation');
              },
            );
          },
        ),          
    );
  }
}

class OrderConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/final_screen');
            },
            child: Text('Place Order'),
          ),
        ],
      ),
    );
  }
}

class FinalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String orderNumber = Random().nextInt(10000).toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Thank you!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank you for your order'),
            Text('Order Number: $orderNumber'),
          ],
        ),
      ),
    );
  }
}
