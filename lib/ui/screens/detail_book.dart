import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/book.dart';
import '../widgets/card_book.dart';
import '../manager/book_manager.dart';

class DetailBook extends StatelessWidget {
  const DetailBook({Key? key, required this.book, required this.title}) : super(key: key);
  static const routeName = '/book-detail';

  final Book book;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(title),
      ),
      body: Container(  
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Container(  
          child: Column(  
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all( //<-- SEE HERE
                        width: 2,
                        color: Colors.black.withOpacity(0.7)
                      ),
                    ),
                    child: Row(  
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: NetworkImage(book.imageUrl))
                      ],
                    )
                  )
                ],
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        book.name,
                      ),
                      Text(
                        book.description,
                      ),
                      Text(
                        '${book.price}'
                      ),
                      
                    ],
                  )
                ],
              ),
            ],
          )
        )
      )
    );
  }
}

