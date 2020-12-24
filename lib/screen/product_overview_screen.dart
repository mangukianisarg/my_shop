import 'package:flutter/material.dart';
import 'package:my_shop/widget/products_grid.dart';

class ProductOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
      ),
      body: ProductsGrid(),
    );
  }
}
