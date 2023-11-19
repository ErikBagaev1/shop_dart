import 'package:flutter/material.dart';
import 'package:shop/components/my_drower.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Страница магазина'),
      ),
      drawer: const MyDrower(),
    );
  }
}
