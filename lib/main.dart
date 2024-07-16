import 'package:exam_flutter_program/views/Detail_page.dart';
import 'package:exam_flutter_program/views/Favorites_page.dart';
import 'package:exam_flutter_program/views/Home_page.dart';
import 'package:exam_flutter_program/views/meal_page.dart';
import 'package:exam_flutter_program/views/recipe_page.dart';
import 'package:flutter/material.dart';

void main() 
{
  runApp(
    const Myapp(),
  );
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home_page(),
      routes: {
        "/Home_page": (context) => const Home_page(),
        "Detail_page": (context) => const Detail_page(),
        "Favorites_page": (context) => const Favorites_page(),
        "meal_page": (context) => const meal_page(),
        "recipe_page": (context) => const recipe_page(),

    
      },
    );
  }
}
