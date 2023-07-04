import 'package:flutter/material.dart';

import 'Recipe.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  static List<Recipe> list = [
    Recipe('Tuxum barak', "assets/tuxum_barak.jpg", "20.000", "egg, milk"),
    Recipe('Manti', "assets/manti.jpg", "30.000", "meat.."),
    Recipe('Qozon kabob', "assets/qozon_kabob.jpg", "45.000", "meat, potatoes"),
    Recipe('Osh', "assets/osh_t.jpg", "25.000", "meat, rice"),
    Recipe('Shashlik', "assets/shashlik.jpg", "15.000", "meat"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Recipe app',
          style: TextStyle(color: Colors.black),
        )),
        body: ListView(
          children: [
            myCard(list[0]),
            myCard(list[1]),
            myCard(list[2]),
            myCard(list[3]),
            myCard(list[4]),
          ],
        ));
  }

  Widget myCard(Recipe recipe) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 48,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            color: Colors.red,
            child: Image.asset(recipe.imageUrl),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              recipe.title + " " + recipe.cost,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
