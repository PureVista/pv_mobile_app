import 'package:flutter/material.dart';
import "dart:convert" as convert;
import "package:http/http.dart" as http;
import "../widgets/widgets.dart" as widgets;
import "../screens/screens.dart" as screens;
import "../models/models.dart" as models;

class FoodScreen extends StatefulWidget {
  FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  List<models.Product> _products = [];
  models.Info? _info;
  String _errorMessage = "";
  bool _fetching = false;

  Future<void> getProducts() async {
    try {
      setState(() {
        _fetching = true;
      });
      var url = Uri.http("localhost:3000", "/api/products");
      var response = await http.get(url);
      if (response.statusCode != 200) {
        throw "Service not working!";
      }
      var jsonResponse = convert.jsonDecode(response.body);

      models.Info responseInfo = models.Info(
        count: jsonResponse["info"]["count"],
        pages: jsonResponse["info"]["pages"],
        prev: jsonResponse["info"]["prev"],
        next: jsonResponse["info"]["next"],
      );

      List<models.Product> responseProducts = [];

      for (var result in jsonResponse["results"] as List) {
        models.Product resultProduct = models.Product(
            id: result["_id"],
            name: result["name"],
            brand: result["brand"],
            description: result["description"],
            isHarmful: result["isHarmful"],
            harmfulPercent: result["harmfulPercent"],
            productType: result["productType"]);

        responseProducts.add(resultProduct);
      }

      setState(() {
        _info = responseInfo;
        _products = responseProducts;
      });
    } catch (error) {
      setState(() {
        _errorMessage = error.toString();
      });
    } finally {
      setState(() {
        _fetching = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        widgets.HeadWithImage(
          text: "Food",
          url: "assets/food.png",
          imageWidth: 80,
          rightMargin: 40,
          color: Colors.black,
          topPadding: 30,
          fontSize: 34,
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            widgets.Card(
              toRoute: screens.ProductDetailScreen(),
              text: "Food",
              url: "assets/food.png",
              imageWidth: 80,
              rightMargin: 40,
              color: Colors.black,
            ),
            widgets.Card(
              toRoute: screens.ProductDetailScreen(),
              text: "Food",
              url: "assets/food.png",
              imageWidth: 80,
              rightMargin: 40,
              color: Colors.black,
            ),
            widgets.Card(
              toRoute: screens.ProductDetailScreen(),
              text: "Food",
              url: "assets/food.png",
              imageWidth: 80,
              rightMargin: 40,
              color: Colors.black,
            ),
            widgets.Card(
              toRoute: screens.ProductDetailScreen(),
              text: "Food",
              url: "assets/food.png",
              imageWidth: 80,
              rightMargin: 40,
              color: Colors.black,
            ),
          ],
        ),
      ]),
    );
  }
}
