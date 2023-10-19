import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'coffee_drink.dart';


class ProductSelection extends StatefulWidget {
  @override
  _ProductSelectionState createState() => _ProductSelectionState();
}

class _ProductSelectionState extends State<ProductSelection> {
  late Future<List<CoffeeDrink>> _coffeeDrinksFuture;

  @override
  void initState() {
    super.initState();
    _coffeeDrinksFuture = _fetchCoffeeDrinks();
  }

  Future<List<CoffeeDrink>> _fetchCoffeeDrinks() async {
    final response = await http.get(Uri.parse('http://localhost:3000/coffeedrinks'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List<dynamic>;
      return json.map((item) => CoffeeDrink.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch coffee drinks');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Product'),
      ),
      body: FutureBuilder<List<CoffeeDrink>>(
        future: _coffeeDrinksFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.map((drink) {
                return ListTile(
                  title: Text(drink.name),
                  subtitle: Text(drink.price),
                  leading: Image.network(drink.iconURL),
                  onTap: () {
                    selectedDrink = drink;
              Navigator.pushNamed(context, '/order_confirmation');
                  },
                );
              }).toList(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error loading coffee drinks'),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}