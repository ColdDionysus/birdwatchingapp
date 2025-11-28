import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/sighting.dart';

class ApiService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Sighting>> getAllSightings() async {
    final snapshot = await _db.collection('sightings').get();

    return snapshot.docs.map((doc) => Sighting.fromJson(doc.data())).toList();
  }

  Future<List<Sighting>> searchBySpecies(String species) async {
    final snapshot =
        await _db
            .collection('sightings')
            .where('species', isEqualTo: species)
            .get();

    return snapshot.docs.map((doc) => Sighting.fromJson(doc.data())).toList();
  }
}
