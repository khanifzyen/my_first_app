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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
            child: RaisedButton(
              child: Text('ADD PRODUCT'),
              onPressed: (){ },
            ),
          ),
          Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text('My Delicious Food'),
                  ],
                )
              ),
            ],
          ),
          
        ],
      ), 
    );
  }
}
