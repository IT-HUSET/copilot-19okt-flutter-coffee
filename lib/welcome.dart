import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://prototyingstorage.blob.core.windows.net/files/reykja.png",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  'Welcome to\nKaffiKrútur',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(color: Colors.black, offset: Offset(2, 2))],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.width * 0.33,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                    blurRadius: 25.0,
                  )],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://prototyingstorage.blob.core.windows.net/files/697075667_logotype_kahuna_cofffee1.png"),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/product_selection'),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Order coffee",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown.shade300,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}