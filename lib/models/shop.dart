import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: 'Продукт 1',
      price: 2332,
      description: 'Что то о товаре',
      imagePath: 'assets/gucci.jpeg',
    ),
    Product(
      name: 'Продукт 2',
      price: 6747,
      description: 'Что то о товаре',
      imagePath: 'assets/rolex.jpg',
    ),
    Product(
      name: 'Продукт 3',
      price: 3422,
      description: 'Что то о товаре',
      imagePath: 'assets/Iphone.jpeg',
    ),
    Product(
      name: 'Продукт 4',
      price: 2317,
      description: 'Что то о товаре',
      imagePath: 'assets/gucci.jpeg',
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;
  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
