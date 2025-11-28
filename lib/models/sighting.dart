class Sighting {
  final String species;
  final String location;
  final int quantity;
  final String tripName;
  final String comments;
  final DateTime date;

  Sighting({
    required this.species,
    required this.location,
    required this.quantity,
    required this.tripName,
    required this.comments,
    required this.date,
  });

  factory Sighting.fromJson(Map<String, dynamic> json) {
    return Sighting(
      species: json['species'],
      location: json['location'],
      quantity: json['quantity'],
      tripName: json['tripName'],
      comments: json['comments'] ?? '',
      date: DateTime.parse(json['date']),
    );
  }
}
