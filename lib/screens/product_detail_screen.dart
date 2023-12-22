import 'package:flutter/material.dart';
import "package:pure_vista/models/product_model.dart";
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
        children: [
          widgets.HeadWithImage(
            text: product.name,
            url: "assets/food.png",
            imageWidth: 80,
            rightMargin: 40,
            color: Colors.black,
            topPadding: 30,
            fontSize: 34,
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ...product.ingredients.map((ingredient) =>
                    widgets.IngredientView(ingredient: ingredient)),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
