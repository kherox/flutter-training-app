import 'package:flutter/material.dart';
import './product.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      Container(margin: EdgeInsets.all(10.0), child: ProductControl(_addProduct)),
      Expanded(child: Products(_products),)
    ]);
  }
}
