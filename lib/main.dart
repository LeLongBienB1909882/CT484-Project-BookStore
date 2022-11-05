import 'package:flutter/material.dart';
import 'screens.dart';
import './models/book.dart';
import './screens.dart';
import './ui/manager/book_manager.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final book = Book(
      id: 'p1',
      name: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      media: ' Bảo vệ quyền riêng tư 100% và trùng khớp 99%! Tìm kiếm Text To Speech Maker.',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
      isFavorite: true,
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BookOverviewScreen(),
      routes: {
        CartScreen.routeName: (ctx) => const CartScreen(),
        OrdersScreen.routeName: (ctx) => const OrdersScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == DetailBook.routeName) {
          final bookId = settings.arguments as String;
          return MaterialPageRoute(
            builder: (ctx) {
              return DetailBook(
                book: BookManager().findById(bookId),
                title: "App",
              );
            },
          );
        }
        return null;
      },
    );
  }
}

