import 'package:flutter/material.dart';
import 'package:food_app/ui/category_list.dart';
import 'package:food_app/ui/colors.dart';
import 'package:food_app/ui/widgets/icon_and_text.dart';

import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({super.key});

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
      ],
    );
  }
}
