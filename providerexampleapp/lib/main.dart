import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexampleapp/providers/counter_provider.dart';
import 'package:providerexampleapp/providers/shopping_cart_provider.dart';
import 'package:providerexampleapp/screens/second_page.dart';
import 'screens/home_page.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ], child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      }
    );
  }
}
