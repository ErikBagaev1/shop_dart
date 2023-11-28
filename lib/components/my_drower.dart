import 'package:flutter/material.dart';
import 'package:shop/components/my_list_tile.dart';

class MyDrower extends StatelessWidget {
  const MyDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_basket,
                    size: 70,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MyListTile(
                  text: 'Магазин',
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              MyListTile(
                  text: 'Корзина',
                  icon: Icons.shopping_cart,
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  })
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                text: 'Выход',
                icon: Icons.exit_to_app,
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false)),
          ),
        ],
      ),
    );
  }
}
