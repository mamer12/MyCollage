import 'package:flutter/material.dart';

class Universty {
  final String id;
  final List<String> category;
  final String title;
  final String yearPub;
  final String provinces;
  final List<String> description;
  final String image;
  final List<String> teachers;
  final int rating;

  const Universty(
      {@required this.id,
      @required this.category,
      @required this.title,
      @required this.yearPub,
      @required this.provinces,
      @required this.description,
      @required this.image,
      @required this.teachers,
      @required this.rating});
}
