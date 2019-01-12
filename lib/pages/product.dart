import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/ui_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final double price;

  ProductPage(this.title, this.image, this.description, this.price);

  Widget _buildAddressPriceRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Union Square, San Francisco',
          style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Text(
            '|',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Text(
          '\$' + price.toString(),
          style: TextStyle(fontFamily: 'Oswald', color: Colors.grey),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, false);
          return Future.value(false);
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: Column(
              children: <Widget>[
                Image.asset(image),
                Container(
                  child: TitleDefault(title),
                  padding: EdgeInsets.all(10.0),
                ),
                _buildAddressPriceRow(),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text("DELETE"),
                    onPressed: () {
                      showDialog(
                          context: context,
                          child: AlertDialog(
                            title: Text("Are you sure ?"),
                            content: Text("This action can't undone!"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("DISCARD"),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              FlatButton(
                                  child: Text("CONTINUE"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context, true);
                                  })
                            ],
                          ));
                    },
                  ),
                )
              ],
            )));
  }
}
