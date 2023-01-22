import 'dart:html';
import 'package:flutter/material.dart';
import '../widgets/product_item.dart';

import '../models/product.dart';
import '../widgets/products_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MuShop'),
      ),
      body: ProductsGrid(),
    );
  }
}
