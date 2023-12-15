import 'package:flutter/material.dart';
import "./screens.dart" as screens;

class MainTabScreen extends StatefulWidget {
  static String route = "/main_tab";
  int selectedIndex;
  MainTabScreen({super.key, required this.selectedIndex});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  final List<Widget> _screens = const [
    screens.CosmeticScreen(),
    screens.PhotoScreen(),
    screens.FoodScreen(),
  ];
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration: const InputDecoration(
              hintText: "Search Product",
              prefixIcon: Icon(Icons.search_outlined)),
        ),
      ),
      body: _screens[selectedIndex],
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedIndex,
      onTap: (int value) {
        setState(() {
          selectedIndex = value;
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
    );
  }
}
