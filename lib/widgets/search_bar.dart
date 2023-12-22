import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          hintText: "Search Product", prefixIcon: Icon(Icons.search_outlined)),
    );
  }
}
