import 'package:flutter/material.dart';
import 'widgets/carousel.dart';
import 'widgets/drawer.dart';
import 'package:shopapp/components/horizontal_listview.dart';
import 'components/products.dart';
import 'pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: Text("shop"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: (null),
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>(Cart())
              ));
            },
          ),
        ],
      ),
      drawer: drawerShop(context),
      body: new ListView(
        children: <Widget>[
          imageCarousel,
          Padding(
            //  ************************ padding widget
            padding: const EdgeInsets.all(8.0),
            child: Text('Categoies'),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Recent products"),
          ),
          //  ************************ grid view
          Container(height: 320.0, child: Products())
        ],
      ),
    );
  }
}
