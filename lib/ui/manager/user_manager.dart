import '../../models/user.dart';

class UserManager {
  final List<User> _items = [

  ];

  int get itemCount {
    return _items.length;
  }

  List<User> get items {
    return [
      User(
        id: '01',
        fullname: 'Chung Phat Tien',
        email: 'TienZona001@gmail.com',
      )
      
    ];
  }

  User findById(String id){
    return items.firstWhere((prod) => prod.id == id);
  }

}
