import 'package:flutter/material.dart';
import 'dart:math';

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
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Product'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/order_confirmation');
          },
          child: Text('Order Large BerserkerBrew'),
        ),
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
