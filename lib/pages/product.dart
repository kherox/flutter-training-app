import 'package:flutter/material.dart';


class ProductPage extends StatelessWidget{

  final String title;
  final String imageUrl;

  ProductPage(this.title,this.imageUrl);

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(children: <Widget>[
            Image.asset(imageUrl),
            Container(child: Text(title), padding: EdgeInsets.all(10.0),)
          ],));
    }
}