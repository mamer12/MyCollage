import 'package:flutter/material.dart';

class Universty {
  final String id;
  final List<String> category;
  final String title;
  final String yearPub;
  final String provinces;
  final String description;
  final String image;
  final List<String> teachersImage;
  final String deanName;
  final String deanImage;
  final int rating;
  final List<String> sections;
  final List<String> sectionsDescription;
  final String researchs;
  final String space;

  const Universty(
      {@required this.space,
      this.researchs,
      this.sectionsDescription,
      @required this.sections,
      @required this.deanName,
      @required this.deanImage,
      @required this.id,
      @required this.category,
      @required this.title,
      @required this.yearPub,
      @required this.provinces,
      @required this.description,
      @required this.image,
      @required this.teachersImage,
      @required this.rating});
}
