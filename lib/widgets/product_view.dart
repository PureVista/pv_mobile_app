import 'package:flutter/material.dart';
import "../models/models.dart" as models;

class ProductView extends StatelessWidget {
  final models.Product product;
  final String category;
  const ProductView({super.key, required this.product, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        textColor: Colors.white,
        tileColor: product.isHarmful ? Colors.redAccent : Colors.green,
        onTap: () {
          product.category = category;
          Navigator.of(context)
              .pushNamed("/product_detail", arguments: product);
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(product.name,
                style: const TextStyle(fontWeight: FontWeight.w700)),
            Text(
                product.brand.length < 25
                    ? product.brand
                    : product.brand.substring(0, 25),
                style: const TextStyle(fontWeight: FontWeight.w400))
          ],
        ),
        leading: CircleAvatar(
            child: Text(
          "%${(100 - product.harmfulnessPercentage).toString()}",
          style: const TextStyle(fontSize: 12),
        )),
        subtitle: Text(
          "${product.description.substring(0, 120)}...",
          style: const TextStyle(color: Colors.white),
        ),
      ),
      const Divider(
        color: Colors.black,
        height: 0,
      )
    ]);
  }
}
