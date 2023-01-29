// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Product {
  String imageUrl;
  String prince;
  String type;
  String name;
  Color color;
  String description;
  Product(
      {required this.imageUrl,
      required this.prince,
      required this.type,
      required this.name,
      required this.color,
      required this.description});
}

List product = [
  Product(
      imageUrl: "assets/brokli.png",
      prince: "20 ming",
      type: "Sabzavot",
      name: "Brokkli",
      color: const Color(0xff82d173),
      description: ''),
  Product(
      imageUrl: "assets/pomildori.png",
      prince: "15 ming",
      type: "poliz ekini",
      name: "Pomidor",
      color: const Color(0xffff8172),
      description: "description")
];
