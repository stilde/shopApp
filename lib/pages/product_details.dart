import 'package:flutter/material.dart';
import 'package:shopapp/main.dart';

class ProductDetails extends StatefulWidget {
  final productDetailsName;
  final productDetailsPrice;
  final productDetailsOldPrice;
  final productDetailsPicture;

  ProductDetails(
      {this.productDetailsName,
      this.productDetailsPrice,
      this.productDetailsOldPrice,
      this.productDetailsPicture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage()));
          },
          child: Text("Detail"),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: (null),
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: (null),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.productDetailsPicture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.productDetailsName,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "\$${widget.productDetailsOldPrice}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.productDetailsPrice}",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              //  ************************ size button
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("size"),
                            content: Text("choose the size"),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text("close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("size")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //  ************************ color button
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Color")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              //  ************************ qty button
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text("Qty")),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              //  ************************ buy button
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text("Buy now"),
                ),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,
                onPressed: () {},
              )
            ],
          ),
          Divider(
            color: Colors.red,
          ),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Proinde die funestis interrogationibus praestituto imaginarius iudex equitum resedit magister adhibitis aliis iam quae essent agenda praedoctis, et adsistebant hinc inde notarii, quid quaesitum esset, quidve responsum, cursim ad Caesarem perferentes, cuius imperio truci, stimulis reginae exsertantis aurem subinde per aulaeum, nec diluere obiecta permissi nec defensi periere conplures."),
          ),
          Divider(
            color: Colors.red,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(widget.productDetailsName),
              )
            ],
          ),
          //  ************************ PRODUCT BRAND
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("brand X"),
              )
            ],
          ),
          //  ************************ PRODUCT CONDITION
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: Text(
                "Product Condition",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Text("New"),
            )
          ],
          ),
          Divider(
            indent: 50.0,
            height: 20.0,
            color: Colors.black
          ),
           Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Similar products"),
            ),
          Container(
            height: 360.0,
            child: SimilarProduct(),
          ),
          
        ],
      ),
    );
  }
}


class SimilarProduct extends StatefulWidget {
  @override
  _SimilarProductState createState() => _SimilarProductState();
}

class _SimilarProductState extends State<SimilarProduct> {
 var productList = [
    {
      "name": "blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 100
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 100
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 100
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 100
    },
    {
      "name": "hills2",
      "picture": "images/products/hills2.jpeg",
      "old_price": 720,
      "price": 100
    },
    {
      "name": "pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 180,
      "price": 100
    },
    {
      "name": "pants2",
      "picture": "images/products/pants2.jpeg",
      "old_price": 220,
      "price": 100
    },    
    {
      "name": "shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 320,
      "price": 100
    },       
    {
      "name": "skt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 220,
      "price": 100
    },       
    {
      "name": "skt2",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 100
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) => SimilarSingleProd(
              prodName: productList[index]['name'],
              prodPicture: productList[index]['picture'],
              prodOldPrice: productList[index]['old_price'],
              prodPrice: productList[index]['price'],
            ),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));
  }
}


class SimilarSingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SimilarSingleProd(
      {this.prodName, this.prodPicture, this.prodOldPrice, this.prodPrice});
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Hero(
        tag: prodName,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                // values of the product to the product details page
                builder: (context) => ProductDetails(
                  productDetailsName: prodName,
                  productDetailsOldPrice: prodOldPrice,
                  productDetailsPrice: prodPrice,
                  productDetailsPicture: prodPicture,
                ))
              );
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prodName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "$prodPrice",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                  subtitle: Text(
                    "$prodOldPrice",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.lineThrough),
                  ),
                ),
              ),
              child: Image.asset(
                prodPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
