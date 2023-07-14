class City {
  final String name;
  final String state;
  final double latitude;
  final double longitude;

  City({
    required this.name,
    required this.state,
    required this.latitude,
    required this.longitude,
  });

  /// Convert the json to a [City]
  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['city'],
      state: json['admin_name'],
      latitude: double.parse(json['lat']),
      longitude: double.parse(json['lng']),
    );
  }
}
