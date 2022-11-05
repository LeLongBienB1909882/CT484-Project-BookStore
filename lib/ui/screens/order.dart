import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/manager/order_manager.dart';
import 'dart:math';
import '../shared/drawer.dart';
import '../../models/Cart.dart';
import '../widgets/detail_order.dart';
class OrdersScreen extends StatelessWidget {
  static const routeName = '/order';

  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final cart = CartManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đơn Hàng Của Bạn'),
        
      ),
      drawer: const AppDrawer(),
      body: BuilCardDetail(context),
    );
  }

  Widget BuilCardDetail(BuildContext context){
    final orderList = OrdersManager();
    final items =  CartItem(
          id: 'c1',
          title: 'Red Shirt',
          quantity: 2,
          imageUrl: 'https://americastarbooks.com/wp-content/uploads/2018/11/noi-dung-sach-dac-nhan-tam-1280x720.jpg',
          price: 29.99,
        );
    return SizedBox(
      height: 300,
      child: Card(
        margin: EdgeInsets.all(16.0),
        child: Padding( 
          padding: EdgeInsets.all(8.0),
          child: Column(  
            children: [
              Text(orderList.orders[0].user.fullname),
              const SizedBox(
                height: 6, // <-- SEE HERE
              ),
              Text('Ngày đặt: ${orderList.orders[0].dateTime}'),
              Container(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => Text('123'),
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget DetailOrder(CartItem cart){
  //   return 
  // }

  
}
