import 'package:scoped_model/scoped_model.dart';

import '../models/product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];
  int _index;

  List<Product> get products {
    return List.from(_products);
  }

  int get selectedIndex {
    return _index;
  }

  void addProduct(Product product) {
    _products.add(product);
    setIndex(null);
  }

  void deleteProduct() {
    _products.removeAt(_index);
    setIndex(null);
  }

  void updateProduct(Product product) {
    _products[_index] = product;
    setIndex(null);
  }

  void setIndex(int index){
    _index = index;
  }

  Product get selectedProduct {
    if (_index == null){
      return null;
    }
    return _products[_index];
  }

}
