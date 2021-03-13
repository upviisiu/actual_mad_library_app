import 'package:actual_mad_library_app/Dependencies/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDisplay extends StatelessWidget {
  final Book book;

  BookDisplay(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Stack(
        children: [
          Image.network(book.image),
          // Text(
          //   book.title,
          //   style: TextStyle(
          //     fontSize: 13,
          //     foreground: Paint()
          //       ..style = PaintingStyle.stroke
          //       ..strokeWidth = 0
          //       ..color = Colors.black,
          //   ),
          // ),
          // Text(
          //   book.title,
          //   style: TextStyle(
          //     fontSize: 13,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
    );
  }
}
