import 'package:flutter/foundation.dart';
import 'package:flutter_project/models/cart.dart';

class CartProvider with ChangeNotifier {
  Map<String, Cart> _items = {};

  Map<String, Cart> get items {
    return {..._items};
  }

  void addItem(String productId, double price, String title,String userId,int quantity) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => Cart(
          id: existingCartItem.id,
          productId: existingCartItem.productId,
          userId: existingCartItem.userId,
          total: existingCartItem.total + price,
          quantity: existingCartItem.quantity + quantity,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => Cart(
          id: DateTime.now().toString(),
          productId: productId,
          userId: userId,        
          quantity: quantity,
          total: price * quantity,
        ),
      );
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
