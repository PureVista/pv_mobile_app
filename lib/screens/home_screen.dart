import 'package:flutter/material.dart';

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
              Center(
                child: Container(
                  width: 250,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 90, child: Image.asset("assets/makeup.png")),
                      Container(
                        margin: const EdgeInsets.only(right: 40),
                        child: const Text(
                          "Cosmetic",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 90, child: Image.asset("assets/food.png")),
                      Container(
                        margin: const EdgeInsets.only(right: 50),
                        child: const Text(
                          "Food",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Center(
                child: Container(
                  width: 250,
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
                      // Container(
                      //   margin: const EdgeInsets.only(right: 15),
                      //   child: const Text(
                      //     "Recommendeds",
                      //     style: TextStyle(
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //         fontSize: 18),
                      //   ),
                      // )
                    ],
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
