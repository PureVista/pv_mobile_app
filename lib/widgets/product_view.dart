import 'package:flutter/material.dart';
import "widgets.dart" as widgets;
import "../models/models.dart" as models;

class ProductView extends StatelessWidget {
  models.Product product;

  ProductView({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        textColor: Colors.black,
        tileColor: product.isHarmful ? Colors.redAccent : Colors.green,
        onTap: () {
          Navigator.of(context)
              .pushNamed("/episode_detail", arguments: product);
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
        leading: CircleAvatar(child: Text(product.ingredients.length.toString())),
        subtitle: Text(
          "${product.description.substring(0, 80)}...",
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
