import 'package:flutter/material.dart';

class HomeData {
  final String id;
  final String title;
  final String imgUrl;
  final List<String> provinces;
  const HomeData(
      {@required this.id,
      @required this.title,
      @required this.imgUrl,
      this.provinces});
}
