import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/characters_screen.dart';
import 'screens/moments_screen.dart';
import 'screens/about_screen.dart';
import 'screens/in_my_life_screen.dart';
import 'screens/hire_me_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/characters': (context) => CharactersScreen(),
        '/moments': (context) => MomentsScreen(),
        '/about': (context) => AboutScreen(),
        '/in_my_life': (context) => InMyLifeScreen(),
        '/hire_me': (context) => HireMeScreen(),
      },
    );
  }
}