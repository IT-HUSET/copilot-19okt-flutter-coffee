import 'dart:convert';


// Nice and clean state management. 💪
CoffeeDrink selectedDrink = coffeeDrinks.first;


class CoffeeDrink {
  String name;
  String price;
  String iconURL;

  CoffeeDrink(this.name, this.price, this.iconURL); 
}


List<CoffeeDrink> coffeeDrinks = getCoffeeDrinksFromJson(coffeDrinksJson);

List<CoffeeDrink> getCoffeeDrinksFromJson(String jsonString) {    
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((json) => CoffeeDrink(
    json['name'] as String,
    json['price'] as String,
    json['iconURL'] as String,
  )).toList();
}


const coffeDrinksJson = '''
[
    {
        "id": "1",
        "name": "Icelandic FrostBrew",
        "price": "600 ISK",
        "iconURL": "https://prototyingstorage.blob.core.windows.net/files/1508732927_icon_capuccino.png"
    },
    {
        "id": "2",
        "name": "Volcano Mocha",
        "price": "720 ISK",
        "iconURL": "https://prototyingstorage.blob.core.windows.net/files/2209226123_icon_moccaccino.png"
    },
    {
        "id": "3",
        "name": "Northern Lights Latte",
        "price": "660 ISK",
        "iconURL": "https://prototyingstorage.blob.core.windows.net/files/4104636024_icon_matcha_capuccino.png"
    },
    {
        "id": "4",
        "name": "Glacier Macchiato",
        "price": "540 ISK",
        "iconURL": "https://prototyingstorage.blob.core.windows.net/files/390718124_icon_matcha_latte.png"
    },
    {
        "id": "5",
        "name": "Viking Espresso",
        "price": "360 ISK",
        "iconURL": "https://prototyingstorage.blob.core.windows.net/files/713094799_icon_cortado.png"
    }
]
''';
