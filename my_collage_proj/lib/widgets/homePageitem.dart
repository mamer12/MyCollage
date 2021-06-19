import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_collage_proj/View/universtiesScreen.dart';

class DataName extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  DataName(this.title, this.imgUrl, this.id);
  // ignore: non_constant_identifier_names
  void SelectUniversty(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(UniverstiesPage.uniPage,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => SelectUniversty(context),
      splashColor: Colors.black.withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Card(
              elevation: 1,
              shadowColor: Colors.black,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.center,
            child: Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15)),
          )
        ],
      ),
    );
  }
}
