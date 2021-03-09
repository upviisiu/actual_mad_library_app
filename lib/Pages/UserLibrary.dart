import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLibrary extends StatefulWidget {
  UserLibrary({Key key}) : super(key: key);

  @override
  _UserLibraryState createState() => _UserLibraryState();
}

class _UserLibraryState extends State<UserLibrary> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Library"),
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