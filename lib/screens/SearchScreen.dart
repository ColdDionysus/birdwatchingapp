import 'package:bird_watching_app/models/sighting.dart';
import 'package:bird_watching_app/services/ApiServices.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final ApiService api = ApiService();
  String query = "";
  List<Sighting> results = [];

  void search(String text) async {
    final data = await api.searchBySpecies(text);
    setState(() => results = data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Birds")),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Enter species name"),
            onChanged: (val) => search(val),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: results.length,
              itemBuilder: (_, index) {
                final s = results[index];
                return ListTile(
                  title: Text(s.species),
                  subtitle: Text("Found at ${s.location}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
