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
  String? category;

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
