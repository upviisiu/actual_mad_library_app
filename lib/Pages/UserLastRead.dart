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

        /*This was supposed to be a way to read pdfs from the api but a classmate
        informed me that certain pdfs are hosted on the api's website and others
        are 3rd party links to other pdfs, which means I didn't have enough time
        to fully implement the feature
        */


      ),
      body: Container(
        child: null,
      ),
    );
  }
}