import 'package:flutter/material.dart';

import 'package:my_collage_proj/app_Data.dart';
import 'package:my_collage_proj/widgets/unversties_list.dart';

class UniverstiesPage extends StatefulWidget {
  static const uniPage = '/universtyList-screen';

  @override
  _UniverstiesPageState createState() => _UniverstiesPageState();
}

class _UniverstiesPageState extends State<UniverstiesPage> {
  @override
  Widget build(BuildContext context) {
    final routeNamed =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final unititle = routeNamed['title'];
    final uniId = routeNamed['id'];
    // ignore: non_constant_identifier_names
    final fliteruni = Universty_data.where((Universty) {
      return Universty.category.contains(uniId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(unititle),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return UniList(
            id: fliteruni[index].id,
            title: fliteruni[index].title,
            image: fliteruni[index].image,
            rating: fliteruni[index].rating,
            provinces: fliteruni[index].provinces,
            yearPub: fliteruni[index].yearPub,
          );
        },
        itemCount: fliteruni.length,
      ),
    );
  }
}
