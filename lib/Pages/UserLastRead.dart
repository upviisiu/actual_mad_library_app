import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLastRead extends StatefulWidget {
  UserLastRead({Key key}) : super(key: key);

  @override
  _UserLastReadState createState() => _UserLastReadState();
}

class _UserLastReadState extends State<UserLastRead> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Last Read"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: null),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
          IconButton(icon: Icon(Icons.menu), onPressed: null),
          IconButton(icon: Icon(Icons.person), onPressed: null)],

        //make function to perform search at some point KEKW, open shopping cart, and open the login menu

      ),
      body: Container(
        width: 411,
        height: 731,
        color: Colors.black,
        child: null,
      ),
    );
  }
}