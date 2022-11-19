import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoUser extends StatelessWidget {
  const InfoUser ({super.key});

  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Padding( 
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage:
                  NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxqlvxC6znHwLTt--Jl00MKMeI8gcb50az3Q&usqp=CAU"),
              backgroundColor: Colors.transparent,
            ),
            SizedBox(height: 20,),
            Text(
              'Lê Long Biển',
              style: TextStyle(  
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'bien@gmail.com',
              style: TextStyle(  
                fontSize: 20,
              ),
            )
          ],  
        ),
      ),
    );
  }
}