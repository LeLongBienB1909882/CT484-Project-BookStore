import 'package:flutter/cupertino.dart';

import '../../models/cart.dart';
import '../../models/order.dart';
import '../../models/user.dart';

import 'user_manager.dart';

class OrdersManager with ChangeNotifier {
  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 59.98,
      products: [
        CartItem(
          id: 'c1',
          title: 'Red Shirt',
          quantity: 2,
          imageUrl: 'https://americastarbooks.com/wp-content/uploads/2018/11/noi-dung-sach-dac-nhan-tam-1280x720.jpg',
          price: 29.99,
        )
      ],
      user: User(
        id: '01',
        fullname: 'Chung Phat Tien',
        email: 'TienZona001@gmail.com',
      ),
      dateTime: DateTime.now(),
    )
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<CartItem> cartProducts, double total) async {
    _orders.insert(
      0,
      OrderItem(
        id: 'o${DateTime.now().toIso8601String()}',
        amount: total,
        products: cartProducts,
        user: User(
          id: '01',
          fullname: 'Chung Phat Tien',
          email: 'TienZona001@gmail.com',
        ),
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
