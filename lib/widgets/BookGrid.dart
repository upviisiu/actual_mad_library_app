import 'package:actual_mad_library_app/Dependencies/Book.dart';
import 'package:flutter/cupertino.dart';

import 'BookDisplay.dart';

class BookGrid extends StatelessWidget{
  final List<Book> bookList;

  const BookGrid({Key key, this.bookList,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        children: bookList.map((book) => BookDisplay(book)).toList(),
      ),
    );
  }
}