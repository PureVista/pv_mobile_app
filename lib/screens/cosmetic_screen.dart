import 'package:flutter/material.dart';
import "../widgets/widgets.dart" as widgets;

class CosmeticScreen extends StatelessWidget {
  const CosmeticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(children: [
        widgets.HeadWithImage(
          text: "Cosmetic",
          url: "assets/makeup.png",
          imageWidth: 120,
          rightMargin: 50,
          color: Colors.black,
          topPadding: 15,
        )
      ]),
    );
  }
}
