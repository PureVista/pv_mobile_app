import 'package:flutter/material.dart';

class IngredientView extends StatelessWidget {
  final Map<String, dynamic> ingredient;
  const IngredientView({super.key, required this.ingredient});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
        textColor: Colors.white,
        tileColor: ingredient["isHarmful"] ? Colors.redAccent : Colors.green,
        onTap: () {
          Navigator.of(context)
              .pushNamed("/ingredient_detail", arguments: ingredient);
        },
        title: Text(ingredient["name"],
            style: const TextStyle(fontWeight: FontWeight.w700)),
        subtitle: Text(
          "${ingredient["description"].substring(0, 80)}...",
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
