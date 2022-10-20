import 'package:flutter/material.dart';
import 'package:food_app/ui/app_bar.dart';
import 'package:food_app/ui/colors.dart';
import 'package:food_app/ui/products/products_grid.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        AppBarGlobal(),
        Expanded(
            child: SingleChildScrollView(
          child: ProductsGrid(),
        ))
      ]),
    );
  }
}
