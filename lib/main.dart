import 'package:flutter/material.dart';
import 'package:shop/pages/intro_page.dart';
import 'package:shop/pages/shop_page.dart';
import 'package:shop/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const IntroPage(),
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
      },
    );
  }
}
