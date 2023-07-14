import 'package:weather_app/weather/models/weather_data.dart';
import 'package:weather_app/weather/services/weather_service.dart';

class WeatherRepository {
  final WeatherService weatherService;

  WeatherRepository({required this.weatherService});

  Future<WeatherData> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final jsonString = await weatherService.getWeather(
      latitude: latitude,
      longitude: longitude,
    );

    return WeatherData.fromJson(jsonString);
  }
}
