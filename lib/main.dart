import 'package:flutter/material.dart';
import 'package:my_shop/providers/cart.dart';
import 'package:my_shop/screen/cart_screen.dart';
import 'package:my_shop/screen/product_overview_screen.dart';
import 'package:provider/provider.dart';

import './screen/product_overview_screen.dart';
import './screen/product_detail_screen.dart';
import './providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          // create: (ctx) => Products(),
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          // create: (ctx) => Cart(),
          value: Cart(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.amber,
            accentColor: Colors.lightBlueAccent,
            fontFamily: 'Lato',
          ),
          home: ProductOverViewScreen(),
          routes: {
            ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
          }),
    );
  }
}
