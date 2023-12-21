import 'package:flutter/material.dart';
import "../widgets/widgets.dart" as widgets;

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(children: [
        widgets.HeadWithImage(
          text: "Food",
          url: "assets/food.png",
          imageWidth: 80,
          rightMargin: 40,
          color: Colors.black,
          topPadding: 30,
        )
      ]),
    );
  }
}
