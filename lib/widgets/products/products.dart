import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './product_card.dart';
import '../../scoped-model/products.dart';
import '../../models/product.dart';

class Products extends StatelessWidget {



  Widget _buildProductList(List<Product> products) {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: (BuildContext context, int index) => ProductCard(products[index], index)
        ,
        itemCount: products.length,
      );
    } else {
      productCards = Container();
    }
    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ProductsModel>( builder: (BuildContext context , Widget child , ProductsModel model){
      return _buildProductList(model.products);
    },);
  }
}
