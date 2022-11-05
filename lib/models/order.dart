import 'cart.dart';
import 'user.dart';

class OrderItem {
  final String? id;
  final double amount;
  final User user;
  final List<CartItem> products;
  final DateTime dateTime;

  int get productCount {
    return products.length;
  }

  OrderItem({
    this.id,
    required this.amount,
    required this.products,
    required this.user,
    DateTime? dateTime,
  }) : dateTime = dateTime ?? DateTime.now();

  OrderItem copyWith({
    String? id,
    double? amount,
    User? user,
    List<CartItem>? products,
    DateTime? dateTime,
  }) {
    return OrderItem(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        user: user ?? this.user,
        products: products ?? this.products,
        dateTime: dateTime ?? this.dateTime);
  }
}
