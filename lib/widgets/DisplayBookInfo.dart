import 'package:actual_mad_library_app/Dependencies/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisplayBookInfo extends StatelessWidget {
  final Book book;

  DisplayBookInfo(this.book);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      child: Stack(
        children: [
          Column(),
          Column(),
        ],
      ),
    );
  }
}
