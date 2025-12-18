import 'order_model.dart';

class OrdersModel {
  String id;
  List<Order> orders;
  String createTime;
  String? updateTime;
  double total;

  OrdersModel({
    required this.id,
    required this.orders,
    required this.createTime,
    this.updateTime,
    required this.total,
  });

  factory OrdersModel.fromJson(Map<String, Object?> json) {
    return OrdersModel(
      id: json["id"] as String,
      orders: (json["orders"] as List).map((element) => Order.fromJson(element)).toList(),
      createTime: json["createTime"] as String,
      updateTime: json["updateTime"] as String?,
      total: json["total"] as double,
    );
  }

  Map<String, Object?> toJson() => {
        "id": id,
        "orders": orders,
        "createTime": createTime,
        "updateTime": updateTime,
        "total": total,
  };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OrdersModel && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
