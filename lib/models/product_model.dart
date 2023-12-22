class Ingredient {
  String name;
  String description;
  bool isHarmful;

  Ingredient({
    required this.name,
    required this.description,
    required this.isHarmful,
  });
}


class Product {
  String id;
  String name;
  String brand;
  String description;
  bool isHarmful;
  int harmfulnessPercentage;
  String productType;
  List<dynamic> ingredients;
  List<String>? barcodes;

  Product(
      {required this.id,
      required this.name,
      required this.brand,
      required this.description,
      required this.isHarmful,
      required this.harmfulnessPercentage,
      required this.productType,
      required this.ingredients,
      this.barcodes});
}
