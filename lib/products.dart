import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products = [];

  Products(this.products) {
    print('[Products Widget] Constructor');
  }
  
  @override
  Widget build(BuildContext context) {
    print('[Product Widget] build()');
    return ListView(
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
