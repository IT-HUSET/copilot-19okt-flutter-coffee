import 'package:flutter/material.dart';
import 'package:flutter_coffee/coffee_drink.dart';

class ProductSelection extends StatelessWidget {
  final drinks = coffeeDrinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select product'),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: (context, index) {
          final drink = drinks[index];
          return ListTile(
            title: Text(drink.name),
            subtitle: Text(drink.price),
            leading: Image.network(drink.iconURL),
            onTap: () {
              selectedDrink = drink;
              Navigator.pushNamed(context, '/order_confirmation');
            },
          );
        },
      ),
    );
  }
}
