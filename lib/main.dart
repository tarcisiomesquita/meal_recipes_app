import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_recipes_app/screens/categories_meals_screen.dart';
import 'package:meal_recipes_app/screens/meal_detail_screen.dart';
import 'package:meal_recipes_app/screens/tabs_screen.dart';
import 'package:meal_recipes_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          secondary: Colors.amberAccent,
        ),
        useMaterial3: true,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: GoogleFonts.raleway().fontFamily,
        textTheme: ThemeData.light().textTheme.copyWith(
              // bodyLarge: TextStyle(fontSize: 14),
              titleLarge: TextStyle(
                  fontSize: 18,
                  fontFamily: GoogleFonts.robotoCondensed().fontFamily),
            ),
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),
      routes: {
        AppRoutes.home: (ctx) => const TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
      },
    );
  }
}
