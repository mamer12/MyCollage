import 'package:flutter/material.dart';

class UniverstiesPage extends StatelessWidget {
  final String id;
  final String title;
  UniverstiesPage(this.id, this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text('fd'),
      ),
    );
  }
}
