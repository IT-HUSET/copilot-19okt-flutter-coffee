import 'package:flutter/material.dart';
import 'package:flutter_coffee/coffee_drink.dart';

class OrderConfirmationScreen extends StatelessWidget {
  final CoffeeDrink drink = selectedDrink!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order confirmation'),
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/final_screen');
              },
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
