class Product {
  int id;
  String name;
  String brand;
  String description;
  bool isHarmful;
  int harmfulPercent;
  String productType;
  List<String>? barcodes;

  Product(
      {required this.id,
      required this.name,
      required this.brand,
      required this.description,
      required this.isHarmful,
      required this.harmfulPercent,
      required this.productType,
      this.barcodes});
}
