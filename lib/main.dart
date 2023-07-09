import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';
import 'Screens/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home_Page(),
        'cart': (context) => const Cart(),
      },
    );
  }
}
