class Product {
  final String id;
  final num price;
  final String title;
  final String? description;
  final String categoryId;
  final List<String> images;
  final String createdDate;
  final String size;
  final double? discount;
  final String? companyName;

  const Product({
    required this.id,
    required this.price,
    required this.title,
    this.description,
    required this.categoryId,
    required this.images,
    required this.createdDate,
    required this.size,
    this.companyName,
    this.discount,
  });

  factory Product.fromJson(Map<String, Object?> json) {
    return Product(
        id: json["id"] as String,
        price: json["price"] as num,
        title: json["title"] as String,
        description: json["description"] as String?,
        categoryId: json["categoryId"] as String,
        images: json["images"] as List<String>,
        createdDate: json["createdDate"] as String,
        size: json["size"] as String,
        companyName: json["companyName"] as String?,
        discount: json["discount"] as double?,
    );
  }

  Map<String, Object?> toJson() {
    Map<String, Object?> map = {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'categoryId': categoryId,
      'images': images,
      'createdDate': createdDate,
      'size': size,
      'companyName': companyName,
      'discount': discount,
    };
    return map;
  }



  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Product && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;

  Product copyWith({
    String? id,
    num? price,
    String? title,
    String? description,
    String? categoryId,
    List<String>? images,
    String? createdDate,
    String? size,
    double? discount,
    String? companyName,
  }) {
    return Product(
      id: id ?? this.id,
      price: price ?? this.price,
      title: title ?? this.title,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      images: images ?? this.images,
      createdDate: createdDate ?? this.createdDate,
      size: size ?? this.size,
      discount: discount ?? this.discount,
      companyName: companyName ?? this.companyName,
    );
  }
}