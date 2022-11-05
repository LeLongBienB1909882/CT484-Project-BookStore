import '../../models/cart.dart';

class CartManager {
  final Map<String, CartItem> _items = {
    'p1': CartItem(
      id: 'c1',
      title: 'Red Shirt',
      price: 29.99,
      imageUrl: 'https://americastarbooks.com/wp-content/uploads/2018/11/noi-dung-sach-dac-nhan-tam-1280x720.jpg',
      quantity: 2,
    ),
  };

  int get productCount {
    return _items.length;
  }

  Iterable<MapEntry<String, CartItem>> get productEntries {
    return {..._items}.entries;
  }

  double get totalAmout {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}
