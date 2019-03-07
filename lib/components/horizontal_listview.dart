import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  final Map<String, String> images = {
    "accessories": "images/cats/accessories.png",
    "dress": "images/cats/dress.png",
    "formal": "images/cats/formal.png",
    "informal": "images/cats/informal.png",
    "jeans": "images/cats/jeans.png",
    "shoe": "images/cats/shoe.png",
    "tshirt": "images/cats/tshirt.png"
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          String titre = images.keys.elementAt(index);
          return Category(
            imageCaption: '$titre',
            imageLocation: images[titre],
          );
        },
      ),

      /* in remplacement of ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/cats/tshirt.png',
            imageCaption: 'tshirt',
          ),
          Category(
            imageLocation: 'images/cats/dress.png',
            imageCaption: 'dress',
          ),
          Category(
            imageLocation: 'images/cats/jeans.png',
            imageCaption: 'pants',
          ),
          Category(
            imageLocation: 'images/cats/shoe.png',
            imageCaption: 'shoe',
          ),
           Category(
            imageLocation: 'images/cats/formal.png',
            imageCaption: 'formal',
          ),
           Category(
            imageLocation: 'images/cats/informal.png',
            imageCaption: 'informal',
          ),
           Category(
            imageLocation: 'images/cats/accessories.png',
            imageCaption: 'accessories',
          )
          
        ],
      ),*/
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          child: ListTile(
            isThreeLine: true,
            title: Image.asset(imageLocation),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageCaption,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          width: 100.0,
          height: 80.0,
        ),
      ),
    );
  }
}
