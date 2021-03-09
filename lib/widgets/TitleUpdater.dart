import 'package:actual_mad_library_app/Pages/LoginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleUpdater extends StatefulWidget {
  @override
  _TitleUpdaterState createState() => _TitleUpdaterState();
}

class _TitleUpdaterState extends State<TitleUpdater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
          IconButton(icon: Icon(Icons.person), onPressed: null),
        ],

        //make function to perform search at some point KEKW, open shopping cart, and open the login menu
      ),
    );
  }
}
