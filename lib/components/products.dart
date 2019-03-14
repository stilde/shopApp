import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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
        itemBuilder: (BuildContext context, int index) => SingleProd(
              prodName: productList[index]['name'],
              prodPicture: productList[index]['picture'],
              prodOldPrice: productList[index]['old_price'],
              prodPrice: productList[index]['price'],
            ),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2));
  }
}

class SingleProd extends StatelessWidget {
  final prodName;
  final prodPicture;
  final prodOldPrice;
  final prodPrice;

  SingleProd(
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
