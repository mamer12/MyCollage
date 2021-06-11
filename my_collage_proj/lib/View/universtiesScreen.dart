import 'package:flutter/material.dart';
import 'package:my_collage_proj/app_Data.dart';
import 'package:my_collage_proj/widgets/unversties_list.dart';

class UniverstiesPage extends StatelessWidget {
  static const uniPage = '/universtyList-screen';
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
            title: fliteruni[index].title,
            image: fliteruni[index].image,
            rating: fliteruni[index].rating,
          );
        },
        itemCount: fliteruni.length,
      ),
    );
  }
}
