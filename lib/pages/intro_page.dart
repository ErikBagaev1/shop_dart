import 'package:flutter/material.dart';
import 'package:shop/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_basket,
              size: 70,
              color: theme.inversePrimary,
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Базовый магазин',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Премиальные вещи',
              style: TextStyle(color: theme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
                child: const Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
