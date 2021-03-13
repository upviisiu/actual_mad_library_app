import 'package:actual_mad_library_app/Dependencies/Book.dart';
import 'package:actual_mad_library_app/Dependencies/BookCollector.dart';
import 'package:actual_mad_library_app/widgets/BookGrid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  // int sortingOrder;
  StorePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  String searchInput="mongodb";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
        actions: [
          // IconButton(icon: Icon(Icons.search), onPressed: (){
          //   List<Book> books = BookCollector.getBook("https://api.itbook.store/1.0/search/"+searchInput);
          //   BookGrid(bookList: books,);
          // }),
        ],
      ),
      body: FutureBuilder(
          future: BookCollector.getBook("https://api.itbook.store/1.0/new"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    strokeWidth: 10,
                  ),
                ),
              );
            }else{
              List<Book> books = snapshot.data.bookList;
              return BookGrid(bookList: books,);
            }
          }),
    );
  }
}
