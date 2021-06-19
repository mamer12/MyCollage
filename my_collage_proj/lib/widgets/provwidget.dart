import 'package:flutter/material.dart';

class ProvPage extends StatefulWidget {
  @override
  _ProvPageState createState() => _ProvPageState();
}

class _ProvPageState extends State<ProvPage> {
  final List provinces = [
    'الأنبار',
    'بابل',
    'بغداد',
    'البصرة',
    'ذي قار',
    'ديالى',
    'دهوك',
    'أربيل',
    'كربلاء',
    'كركوك',
    'ميسان',
    'المثنى',
    'النجف',
    'نينوى',
    'القادسية',
    'صلاح الدين',
    'السليمانية',
    'واسط',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logoBlack.png',
          fit: BoxFit.cover,
          height: 100,
        ),
        backgroundColor: Colors.white,
        elevation: 22,
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: provinces.length,
            itemBuilder: (BuildContext ctxt, int index) {
              return Card(
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                      padding: EdgeInsets.all(8),
                      color: Colors.white,
                      child: new Text(
                        provinces[index],
                        style: Theme.of(context).textTheme.headline1,
                      )),
                ),
              );
            }),
      ),
    );
  }
}
