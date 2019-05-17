import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products = [];

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products.map((el) {
        return Card(
            child: Column(
          children: <Widget>[
            Image.asset('assets/food.jpg'),
            Text(el),
          ],
        ));
      }).toList(),
    );
  }
}
