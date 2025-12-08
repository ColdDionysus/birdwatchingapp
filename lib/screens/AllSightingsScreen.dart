import 'package:bird_watching_app/services/ApiServices.dart';
import 'package:flutter/material.dart';

class AllSightingsScreen extends StatelessWidget {
  final ApiService api = ApiService();

  AllSightingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Sightings")),
      body: FutureBuilder(
        future: api.getAllSightings(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();

          final sightings = snapshot.data!;
          return ListView.builder(
            itemCount: sightings.length,
            itemBuilder: (_, index) {
              final s = sightings[index];
              return ListTile(
                title: Text(s.species),
                subtitle: Text("Location: ${s.location} • Qty: ${s.quantity}"),
              );
            },
          );
        },
      ),
    );
  }
}
