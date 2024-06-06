import 'package:flutter/material.dart';

import '../modals.dart/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(category.title);
  }
}
