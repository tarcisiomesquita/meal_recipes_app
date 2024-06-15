import 'package:flutter/material.dart';
import 'package:meal_recipes_app/components/main_drawer.dart';
import 'package:meal_recipes_app/modals.dart/screen.dart';
import 'package:meal_recipes_app/screens/categories_screen.dart';
import 'package:meal_recipes_app/screens/favorites_screen.dart';

import '../modals.dart/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  const TabsScreen(this.favoriteMeals, {super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  List<Screen>? _screens;

  @override
  void initState() {
    _screens = [
      const Screen('Categorias', CategoriesScreen()),
      Screen('Favoritos', FavoritesScreen(widget.favoriteMeals))
    ];
    super.initState();
  }

  void _selectScreen(int index) {
    setState(() => _selectedScreenIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens![_selectedScreenIndex].title),
      ),
      drawer: const MainDrawer(),
      body: _screens![_selectedScreenIndex].screen,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
