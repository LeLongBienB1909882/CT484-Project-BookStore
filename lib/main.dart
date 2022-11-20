import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:myapp/ui/auth/auth_manager.dart';
import 'package:myapp/ui/manager/cart_manager.dart';
import 'package:myapp/ui/manager/order_manager.dart';
import 'package:myapp/ui/screens/orders_screen.dart';
import 'screens.dart';
import 'package:provider/provider.dart';
import './ui/manager/book_manager.dart';
import 'ui/screens/edit_book.dart';
import 'ui/screens/user_books_screen.dart';
import 'ui/splash_screen.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => AuthManager(),
          ),
          ChangeNotifierProxyProvider<AuthManager, BookManager>(
              create: (ctx) => BookManager(),
              update: (ctx, authManager, productsmanager) {
                productsmanager!.authToken = authManager.authToken;
                return productsmanager;
              }),
          ChangeNotifierProvider(create: (ctx) => CartManager()),
          ChangeNotifierProvider(create: (ctx) => OrdersManager())
        ],
        child: Consumer<AuthManager>(
          builder: (context, authmanager, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.green,
              ),
              home: authmanager.isAuth
                  ? const BookOverviewScreen()
                  : FutureBuilder(
                      future: authmanager.tryAutoLogin(),
                      builder: (ctx, snapshot) {
                        return snapshot.connectionState ==
                                ConnectionState.waiting
                            ? const SplashScreen()
                            : const AuthScreen();
                      },
                    ),
              routes: {
                CartScreen.routeName: (ctx) => const CartScreen(),
                OrdersScreen2.routeName: (ctx) => const OrdersScreen2(),
                UserBooksScreen.routeName: (ctx) => const UserBooksScreen(),
              },
              onGenerateRoute: (settings) {
                if (settings.name == DetailBook.routeName) {
                  final bookId = settings.arguments as String;
                  return MaterialPageRoute(
                    builder: (ctx) {
                      return DetailBook(
                          ctx.read<BookManager>().findById(bookId));
                    },
                  );
                }
                if (settings.name == EditBook.routeName) {
                  final productId = settings.arguments as String?;
                  return MaterialPageRoute(builder: (ctx) {
                    return EditBook(
                      productId != null
                          ? ctx.read<BookManager>().findById(productId)
                          : null,
                    );
                  });
                }
                if (settings.name == DetailBook.routeName) {
                  final matchId = settings.arguments as String;
                  return MaterialPageRoute(
                    builder: (ctx) {
                      return DetailBook(
                        ctx.read<BookManager>().findById(matchId),
                      );
                    },
                  );
                }
                return null;
              },
            );
          },
        ));
  }
}
