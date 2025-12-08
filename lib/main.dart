import 'package:bird_watching_app/screens/AllSightingsScreen.dart';
import 'package:bird_watching_app/screens/HomeScreen.dart';
import 'package:bird_watching_app/screens/SearchScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => HomeScreen(),
        '/all': (_) => AllSightingsScreen(),
        '/search': (_) => SearchScreen(),
      },
    ),
  );
}
