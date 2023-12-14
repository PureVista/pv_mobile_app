import 'package:flutter/material.dart';
import "./screens.dart" as screens;

class MainTabScreen extends StatefulWidget {
  static String route = "/main_tab";
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  final List<Widget> _screens = const [
    screens.HomeScreen(),
    screens.CosmeticScreen(),
    screens.PhotoScreen(),
    screens.FoodScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration(
              hintText: "Search Product", prefixIcon: Icon(Icons.search_outlined)),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        iconSize: 26,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        selectedLabelStyle:
            const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: "Cosmetic"),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined, size: 50),
            label: "Check Barcode",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_outlined), label: "Food"),
        ],
      ),
    );
  }
}
