import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;
  SearchBar({super.key, required this.controller, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: onSubmitted,
      decoration: const InputDecoration(
          hintText: "Search Product", prefixIcon: Icon(Icons.search_outlined)),
    );
  }
}
