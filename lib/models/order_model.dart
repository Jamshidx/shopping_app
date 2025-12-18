import 'product_model.dart';

class Order {
  Product product;
  int quantity;
  double total;

  Order({
    required this.product,
    required this.quantity,
    required this.total,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          runtimeType == other.runtimeType &&
          product == other.product &&
          quantity == other.quantity &&
          total == other.total);

  @override
  int get hashCode => Object.hash(product, quantity, total);

  @override
  String toString() {
    return 'Order{product: $product, quantity: $quantity, total: $total}';
  }

  Map<String, Object?> toJson() {
    return {
      'product': product,
      'quantity': quantity,
      'total': total,
    };
  }

  factory Order.fromJson(Map<String, Object?> json) {
    return Order(
      product: Product.fromJson(json['product'] as Map<String, Object?>),
      quantity: json['quantity'] as int,
      total: json['total'] as double,
    );
  }
}
