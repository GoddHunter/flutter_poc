import 'package:flutter/material.dart';
import 'package:flutter_poc/screens/recipeScreen.dart';

//ignore_for_file: prefer_const_constructors

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter POC',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: RecipeScreen(),
        );
  }
}

