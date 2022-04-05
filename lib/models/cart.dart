class Cart {
  String id;
  String userId;
  String productId;
  int quantity;
  double total;

  Cart({
    required this.id,
    required this.userId,
    required this.productId,
    required this.quantity,
    required this.total,
  });
}
