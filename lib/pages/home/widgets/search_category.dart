import 'package:flutter/material.dart';

import 'package:furnitour/models/category.dart';

class SearchByCategory extends StatelessWidget {
  final Category category;
  const SearchByCategory({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Image.asset(category.iconPath, width: 36, height: 36),
    );
  }
}
