import 'package:flutter/cupertino.dart';

class Product {
  final String title;
  final int price;
  final double quality;
  final String category;
  final List image;
  Product({
    required this.title,
    required this.price,
    required this.quality,
    required this.category,
    required this.image,
  });
}

class Global {}
