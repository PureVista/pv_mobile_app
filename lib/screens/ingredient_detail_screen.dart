import 'package:flutter/material.dart';
import "../widgets/widgets.dart" as widgets;

class IngredientDetailScreen extends StatelessWidget {
  static String route = "/ingredient_detail";
  const IngredientDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ingredient =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: widgets.SearchBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    ingredient["name"],
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 350,
                      color: ingredient["isHarmful"]
                          ? Colors.redAccent
                          : Colors.green,
                      alignment: Alignment.center,
                      child: Text(
                        ingredient["description"],
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
