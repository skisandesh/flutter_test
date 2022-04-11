

import 'package:flutter/foundation.dart';
import 'package:flutter_project/dummy_data.dart';
import 'package:flutter_project/models/product.dart';

class ProductProvider extends ChangeNotifier{
  Product _product = allProducts[0];
  double _price = allProducts[0].price;
  double get price => _price;


  getProduct() => _product;

  set product(Product product) {
    _product = product;
    notifyListeners();
  }

  void addPrice(double price) {
    _price = allProducts[0].price ;
    _price += price;
    notifyListeners();
  }
  
}