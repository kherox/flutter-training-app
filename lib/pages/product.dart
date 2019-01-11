import 'dart:async';

import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

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
                Image.asset(imageUrl),
                Container(
                  child: Text(title),
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    child: Text("DELETE"),
                    onPressed: () {
                      showDialog(context:context,
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
