import "dart:async";
import 'package:flutter/material.dart';
import "dart:convert" as convert;
import "package:http/http.dart" as http;
import "../models/models.dart" as models;
import "./screens.dart" as screens;
import "../widgets/widgets.dart" as widgets;

class MainTabScreen extends StatefulWidget {
  static String route = "/main_tab";
  final int selectedIndex;
  const MainTabScreen({super.key, required this.selectedIndex});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  final List<Widget> _screens = const [
    screens.HomeScreen(),
    screens.CosmeticScreen(),
    screens.PhotoScreen(),
    screens.FoodScreen(),
    screens.RecommendedScreen(),
  ];
  late int selectedIndex;
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.selectedIndex;
  }

  List<models.Product> _products = [];
  bool _fetching = false;

  Future<List<models.Product>> getProducts() async {
    var uri = Uri.http("10.0.2.2:3000", "/api/products");
    var response = await http.get(uri);

    if (response.statusCode != 200) {
      throw "Service not working!";
    }
    var jsonResponse = convert.jsonDecode(response.body);

    List<models.Product> responseProducts = [];

    for (var result in jsonResponse["result"] as List) {
      models.Product resultProduct = models.Product(
          id: result["_id"],
          name: result["name"],
          brand: result["brand"],
          description: result["description"],
          isHarmful: result["isHarmful"],
          ingredients: result["ingredients"],
          harmfulnessPercentage: result["harmfulnessPercentage"],
          productType: result["productType"]);
      responseProducts.add(resultProduct);
    }

    return responseProducts;
  }

  void _onSearchSubmit(String searchTerm) async {
    if (searchTerm.isEmpty) {
      setState(() {
        _fetching = false;
        _products = [];
      });
    }
    setState(() {
      _fetching = true;
    });
    List<models.Product> products = await getProducts();
    setState(() {
      _fetching = false;
      List<models.Product> filteredProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(searchTerm.toLowerCase()))
          .toList();
      _products = filteredProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widgets.SearchBar(
            controller: _searchController, onSubmitted: _onSearchSubmit),
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
      iconSize: 32,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.green,
      showUnselectedLabels: true,
      selectedLabelStyle:
          const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      unselectedLabelStyle:
          const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined), label: "Cosmetic"),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined, size: 50),
          label: "Check Barcode",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.fastfood_outlined), label: "Food"),
        BottomNavigationBarItem(
            icon: Icon(Icons.recommend_outlined), label: "Recommended"),
      ],
    );
  }
}
