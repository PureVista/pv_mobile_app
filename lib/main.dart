import 'package:flutter/material.dart';
import "./screens/screens.dart" as screens;

void main() {
  runApp(const PureVistaApp());
}

class PureVistaApp extends StatelessWidget {
  const PureVistaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pure Vista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      initialRoute: screens.MainTabScreen.route,
      routes: {
        screens.MainTabScreen.route: (context) =>
            const screens.MainTabScreen(selectedIndex: 0),
        screens.ProductDetailScreen.route: (context) =>
            const screens.ProductDetailScreen(),
        screens.IngredientDetailScreen.route: (context) =>
            const screens.IngredientDetailScreen()
      },
    );
  }
}
