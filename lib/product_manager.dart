import 'package:flutter/material.dart';
import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Food Tester'});

  @override
  _ProductManagerState createState() {
    print('[ProductManagerState] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
    print('[ProductManagerState] initstate()');
    print(_products);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManagerState] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}
