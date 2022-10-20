import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/ui/app_bar.dart';
import 'package:food_app/ui/category_list.dart';
import 'package:food_app/ui/colors.dart';
import 'package:food_app/ui/home/home_body_page.dart';
import 'package:food_app/ui/widgets/big_text.dart';
import 'package:food_app/ui/widgets/small_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.grey[200],
        body: Column(
      children: [
        AppBarGlobal(),
        Expanded(
          child: SingleChildScrollView(
            child: HomeBodyPage(),
          ),
        ),
      ],
    ));
  }
}
