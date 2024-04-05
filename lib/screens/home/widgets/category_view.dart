import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ["TRABALHO", "ESTUDOS", "CASA"];

  int _category = 0;

  void selectFoward() {
    setState(() {
      _category++;
    });
  }

  void selectBackward() {
    setState(() {
      _category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: _category > 0 ? selectBackward : null,
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        Text(
          categories[_category],
          style: const TextStyle(
              fontSize: 18,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300,
              color: Colors.black),
        ),
        IconButton(
          onPressed: _category < categories.length - 1 ? selectFoward : null,
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.black,
        )
      ],
    );
  }
}
