import 'product_model.dart';

class Category {
  final String id;
  final String name;
  final String icon;
  final List<Product> products;
  final List<String> productsId;

  const Category({
    required this.id,
    required this.name,
    required this.icon,
    this.products = const [],
    required this.productsId,
  });

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'products': products,
      'productsId': productsId,
    };
  }

  factory Category.fromJson(Map<String, Object?> json) {
    return Category(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String,
      productsId: (json['productsId'] as List<String>?) ?? [],
    );
  }



  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Category && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  Category copyWith({
    String? id,
    String? name,
    String? icon,
    List<Product>? products,
    List<String>? productsId,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      products: products ?? this.products,
      productsId: productsId ?? this.productsId,
    );
  }
}