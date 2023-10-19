import 'package:flutter/material.dart';
import 'package:flutter_coffee/coffee_drink.dart';
import 'dart:math';

class FinalScreen extends StatelessWidget {
  final CoffeeDrink drink = selectedDrink!;

  @override
  Widget build(BuildContext context) {
    final randomOrderNumber = Random().nextInt(999999);
    return Scaffold(
      appBar: AppBar(
        title: Text('Thank you!'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              drink.iconURL,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Text(
              drink.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              drink.price,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Thank you for your order',
              style: TextStyle(fontSize: 32),
            ),
            Text(
              'Order Number: $randomOrderNumber',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
