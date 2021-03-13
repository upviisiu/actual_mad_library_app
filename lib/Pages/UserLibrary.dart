import 'package:actual_mad_library_app/Dependencies/BookCollector.dart';
import 'package:actual_mad_library_app/widgets/BookGrid.dart';
import 'package:actual_mad_library_app/Dependencies//Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLibrary extends StatefulWidget {
  UserLibrary({Key key}) : super(key: key);

  @override
  _UserLibraryState createState() => _UserLibraryState();
}

class _UserLibraryState extends State<UserLibrary> {
  String searchInput="mongodb";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Library"),
        actions: [
          // IconButton(icon: Icon(Icons.search), onPressed: (){
          //   List<Book> books = BookCollector.getBook("https://api.itbook.store/1.0/search/"+searchInput)
          //   BookGrid(bookList: books,);
          // }),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: null),
          IconButton(icon: Icon(Icons.menu), onPressed: null),
        ],
        /*
        * This shows the list of books after comparing them to the list of all
        * books imported from the api
        *
        * create user book list by searching up the isbn and storing the book
        * class for that isbn
        *
        *  load user book list based on uid
        *
        * show book list
        * */
      ),
      body: Container(
        child: null,
      ),
    );
  }
}