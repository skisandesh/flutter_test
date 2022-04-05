

import 'package:flutter/foundation.dart';
import 'package:flutter_project/dummy_data.dart';
import 'package:flutter_project/models/product.dart';

class ProductProvider extends ChangeNotifier{
  Product _product = allProducts[0];

  getProduct() => _product;

  set product(Product product) {
    _product = product;
    notifyListeners();
  }
}