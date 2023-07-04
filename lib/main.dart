import 'package:flutter/material.dart';
import 'package:flutter_first_exam/alphabet_page.dart';
import 'package:flutter_first_exam/autoelon_page.dart';
import 'package:flutter_first_exam/recipe_page.dart';
import 'package:flutter_first_exam/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: SignupPage(),
     // home: Alphabet(),
      home: RecipePage(),
     // home: AutoElonPage(),
    );
  }
}
