import 'dart:ffi';
import 'package:actual_mad_library_app/Dependencies/BookCollector.dart';
import 'package:flutter/foundation.dart';

class Book {
  int isbn10;
  final int isbn13;
  int pages;
  int year;
  int rating;
  final String title;
  final String subTitle;
  String author;
  String publisher;
  String description;
  final double price;
  final String url;
  final String image;
  String pdf;
  int error;


  Book({
      this.isbn10,
      @required this.isbn13,
      this.pages,
      this.year,
      this.rating,
      @required this.title,
      @required this.subTitle,
      this.author,
      this.publisher,
      this.description,
      @required this.price,
      @required this.url,
      @required this.image,
      this.pdf,
      this.error,
  });

  factory Book.FromJson(Map<String, dynamic> json){
    return Book(
     // error: int.parse(json['error']),
      isbn13: int.parse(json['isbn13']),
      title: json['title'] as String,
      subTitle: json['subtitle'] as String,
      price: double.parse(json['price'].toString().replaceFirst('\$', '')),
      image: json['image'] as String,
      url: json['url'] as String,
      //rating: int.parse(json['rating']),
      publisher: json['publisher'],
      author: json['authors'],
      description: json['desc'],
      pdf: json['pdf'],
    );
  }
  @override
  String toString() {
    return 'Book{isbn: $isbn13, title: $title, price: \$$price}';
  }
}