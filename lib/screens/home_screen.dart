import 'package:flutter/material.dart';
import "screens.dart" as screens;
import "../widgets/widgets.dart" as widgets;

class HomeScreen extends StatelessWidget {
  static String route = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 54),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 18,
              ),
              const widgets.Card(
                  toRoute: screens.MainTabScreen(selectedIndex: 1),
                  text: "Cosmetic",
                  url: "assets/makeup.png",
                  imageWidth: 120,
                  rightMargin: 40),
              const SizedBox(
                height: 18,
              ),
              const widgets.Card(
                  toRoute: screens.MainTabScreen(selectedIndex: 3),
                  text: "Food",
                  url: "assets/food.png",
                  imageWidth: 105,
                  rightMargin: 50),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const screens.MainTabScreen(selectedIndex: 4)));
                  },
                  child: Container(
                    width: 400,
                    height: 150,
                    decoration: const BoxDecoration(
                        // color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Image.asset("assets/recommended.png")),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
