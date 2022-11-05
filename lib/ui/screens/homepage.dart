import 'package:flutter/material.dart';
import '../widgets/card_book.dart';
import '../manager/book_manager.dart';
import '../../screens.dart';
import '../widgets/top_right_badge.dart';

class BookOverviewScreen extends StatefulWidget {
  const BookOverviewScreen({super.key});

  @override
  State<BookOverviewScreen> createState() => _BookOverviewScreenState();
}

class _BookOverviewScreenState extends State<BookOverviewScreen> {
  // const MyHomePage({Key? key, required this.title}) : super(key: key);

  // final String title;

  @override
  Widget build(BuildContext context) {
    final listBook = BookManager().items;
    return Scaffold(
      appBar: AppBar(

        title: Text("Ban Sach"),
        actions: <Widget>[
          buildShoppingCartIcon(),
        ],
      ),
      drawer: const AppDrawer(),
      body: Container(  
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 43, 25, 57).withOpacity(0.9)
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listBook.length,
          itemBuilder: (BuildContext context, int index) {
            return CardBook(listBook[index]);
          }
        )
      )
    );
  }

  Widget buildShoppingCartIcon() {
    return TopRightBadge(
      data: 0,
      child: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
          color: Colors.red,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(CartScreen.routeName);
        },
      ),
    );
  }
}

