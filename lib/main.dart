import 'package:flutter/material.dart';
import 'package:my_shop/screen/product_detail_screen.dart';
import 'package:my_shop/screen/product_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.white,
        fontFamily: 'Lato',
      ),
      home: ProductOverViewScreen(),
      routes: {ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen()},
    );
  }
}
