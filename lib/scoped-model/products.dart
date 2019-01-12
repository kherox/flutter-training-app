import 'package:scoped_model/scoped_model.dart';

import '../models/product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];

  List<Product> get products {
    return List.from(_products);
  }

  void _addProduct(Product product) {
    _products.add(product);
  }

  void _deleteProduct(int index) {
    _products.removeAt(index);
  }

  void updateProduct(Product product, index) {
    _products[index] = product;
  }
}
