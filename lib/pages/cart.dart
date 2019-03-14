import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  final Widget child;

  Cart({Key key, this.child}) : super(key: key);

  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
      elevation: 0.1,
      title: Text("Cart"),
      backgroundColor: Colors.red,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.white,),
          onPressed: null
        )
      ],
    ));
  }
}
