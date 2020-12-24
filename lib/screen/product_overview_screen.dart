import 'package:flutter/material.dart';
import 'package:my_shop/widgets/products_grid.dart';

enum FilterOption {
  Favorites,
  All,
}

class ProductOverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyShop',
        ),
        actions: [
          Icon(Icons.import_contacts, color: Colors.red,),
          PopupMenuButton(
            onSelected: (FilterOption selectedValue){
              print(selectedValue);
            },
            icon: Icon(
              Icons.more_vert,
              color: Colors.blue,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(child: Text('Only Favorites'), value: FilterOption.Favorites),
              PopupMenuItem(child: Text('Show All'), value: FilterOption.All),
            ],
          ),
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
