import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherService {
  Future<Map<String, dynamic>> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final response = await http.get(
      Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&hourly=temperature_2m,weathercode&current_weather=true',
      ),
    );

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, then parse the JSON.
      return jsonDecode(response.body);
    } else {
      // If the server did not return a 200 OK response, then throw an exception.
      throw Exception('Failed to load weather');
    }
  }
}
