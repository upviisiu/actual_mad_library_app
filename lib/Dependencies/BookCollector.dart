import 'dart:convert';
import 'package:actual_mad_library_app/Dependencies/Book.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class BookCollector{
  final int error;
  final int total;
  final List<Book> bookList;

  BookCollector({
      @required this.error,
      @required this.total,
      @required this.bookList});

  factory BookCollector.FromJson(Map<String, dynamic> json){
    return BookCollector(
      error: int.parse(json['error']),
      total: int.parse(json['total']),
      bookList: List<Book>.from(json['books'].map((book)=> Book.FromJson(book)).toList()),
    );
  }

  static Future<BookCollector> getBook(String url) async {
    var response = await http.get(url);

    return parseBook(response.body);
    //print(parseBook(response.body).toString());
  }

  static BookCollector parseBook(String responseBody) {
    final Map parsed = json.decode(responseBody);
    return BookCollector.FromJson(parsed);
  }
  @override
  String toString() {
    return 'BookCollector{total: $total, error: $error, books: $bookList}';
  }
}



