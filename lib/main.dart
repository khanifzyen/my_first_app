import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _products = ['Food Tester', 'Food Vaganza'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: RaisedButton(
              child: Text('ADD PRODUCT'),
              onPressed: () {},
            ),
          ),
          Column(
            children: 
              _products.map((el) {
                return Card(
                    child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(_products[0]),
                  ],
                ));
              }).toList(),
          ),
        ],
      ),
    );
  }
}
