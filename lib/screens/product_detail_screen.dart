import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static String route = "/product_detail";

  const ProductDetailScreen({super.key, required});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 72),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Eren"),
              Text("Eren"),
            ],
          ),
        )
      ],
    ));
  }
}
