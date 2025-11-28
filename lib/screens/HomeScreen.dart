import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bird Watching App")),
      body: Column(
        children: [
          ElevatedButton(
            child: Text("View All Sightings"),
            onPressed: () => Navigator.pushNamed(context, "/all"),
          ),
          ElevatedButton(
            child: Text("Search by Species"),
            onPressed: () => Navigator.pushNamed(context, "/search"),
          ),
        ],
      ),
    );
  }
}
