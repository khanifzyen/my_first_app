import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

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
    //print(_products);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManagerState] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: RaisedButton(
            child: Text('ADD PRODUCT'),
            onPressed: () {
              setState(() {
                _products.add('Food Vaganza');
                print(_products);
              });
            },
          ),
        ),
        Products(_products),
      ],
    );
  }
}
