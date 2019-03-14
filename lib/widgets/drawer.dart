import 'package:flutter/material.dart';
import '../pages/cart.dart';


Widget drawerShop(BuildContext context) {
   return Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountEmail: Text("name@gmail.com"),
              accountName: Text("nom prenom"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
            //body
            InkWell(
              onTap: () {
                print('click');
              },
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),
            InkWell(
              onTap: (null),
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.account_box, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (null),
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=>(Cart())
              ));},
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (null),
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (null),
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.blue),
                ),
                leading: Icon(
                  Icons.live_help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      );
}     