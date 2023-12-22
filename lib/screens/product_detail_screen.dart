import 'package:flutter/material.dart';
import "../models/models.dart" as models;
import "../widgets/widgets.dart" as widgets;

class ProductDetailScreen extends StatelessWidget {
  static String route = "/product_detail";
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product =
        ModalRoute.of(context)!.settings.arguments as models.Product;

    return Scaffold(
      appBar: AppBar(
        title: widgets.SearchBar(),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [Text(product.name)],
      )),
    );
  }
}
