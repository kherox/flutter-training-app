import 'package:flutter/material.dart';

import '../widgets/products/products.dart';

class ProductsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Choose"),
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Manage Product"),
                onTap: ()  {
                  Navigator.pushReplacementNamed(context,"/admin");
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Lema Travel"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.favorite) , color: Colors.white, onPressed: (){},)
          ],
        ),
        body: Products());
  }
}
