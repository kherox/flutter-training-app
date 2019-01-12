import 'package:flutter/material.dart';


class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductListPage(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(products[index]["title"]),
          background: Container(
            color: Colors.red,
          ),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage(products[index]["image"])),
                title: Text(products[index]['title']),
                subtitle: Text(products[index]['price'].toString() + " F "),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
              Divider()
            ],
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
