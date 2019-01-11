import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String,dynamic>> products;

  
  ProductsPage(this.products);

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
        ),
        body: ProductManager(products));
  }
}
