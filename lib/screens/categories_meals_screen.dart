import 'package:flutter/material.dart';
import 'package:meal_recipes_app/modals.dart/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final Category category;

  const CategoriesMealsScreen(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(child: Text('Receitas por Categoria: ${category.id}')),
    );
  }
}
