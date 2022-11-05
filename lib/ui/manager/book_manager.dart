import '../../models/book.dart';

class BookManager {
  final List<Book> _items = [

  ];

  int get itemCount {
    return _items.length;
  }

  List<Book> get items {
    return [
      
      Book(
        id: 'p1',
        name: 'A',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        media: ' Bảo vệ quyền riêng tư 100% và trùng khớp 99%! Tìm kiếm Text To Speech Maker. Kết quả tức thì và cá nhân hóa Tìm kiếm! Truy cập không giới hạn. Luôn luôn trung thực. Tài nguyên tốt nhất. Kết quả và câu trả lời. An toàn 100%.',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        isFavorite: true,
      ),
      Book(
        id: 'p2',
        name: 'B',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        media: ' Bảo vệ quyền riêng tư 100% và trùng khớp 99%! Tìm kiếm Text To Speech Maker. Kết quả tức thì và cá nhân hóa Tìm kiếm! Truy cập không giới hạn. Luôn luôn trung thực. Tài nguyên tốt nhất. Kết quả và câu trả lời. An toàn 100%.',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        isFavorite: true,
      ),
      Book(
        id: 'p',
        name: 'C',
        description: 'A red shirt - it is pretty red!',
        price: 29.99,
        media: ' Bảo vệ quyền riêng tư 100% và trùng khớp 99%! Tìm kiếm Text To Speech Maker. Kết quả tức thì và cá nhân hóa Tìm kiếm! Truy cập không giới hạn. Luôn luôn trung thực. Tài nguyên tốt nhất. Kết quả và câu trả lời. An toàn 100%.',
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        isFavorite: true,
      ),
    ];
  }

  Book findById(String id){
    return items.firstWhere((prod) => prod.id == id);
  }

}
