import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_coffee/coffee_drink.dart';

void main() {
  group('getCoffeeDrinksFromJson', () {
    test('returns a list of CoffeeDrink objects', () {
      const json = '''
        [
          {
            "name": "Latte",
            "price": "3.50",
            "iconURL": "https://example.com/latte.png"
          },
          {
            "name": "Cappuccino",
            "price": "3.00",
            "iconURL": "https://example.com/cappuccino.png"
          }
        ]
      ''';

      final coffeeDrinks = getCoffeeDrinksFromJson(json);

      expect(coffeeDrinks, isA<List<CoffeeDrink>>());
      expect(coffeeDrinks.length, equals(2));
      expect(coffeeDrinks[0].name, equals('Latte'));
      expect(coffeeDrinks[0].price, equals('3.50'));
      expect(coffeeDrinks[0].iconURL, equals('https://example.com/latte.png'));
      expect(coffeeDrinks[1].name, equals('Cappuccino'));
      expect(coffeeDrinks[1].price, equals('3.00'));
      expect(coffeeDrinks[1].iconURL, equals('https://example.com/cappuccino.png'));
    });
  });
}
