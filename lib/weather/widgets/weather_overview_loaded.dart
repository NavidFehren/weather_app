import 'package:flutter/material.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/weather/models/weather_data.dart';

class WeatherOverviewLoaded extends StatelessWidget {
  final City city;
  final WeatherData weatherData;

  const WeatherOverviewLoaded({
    Key? key,
    required this.city,
    required this.weatherData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          city.name,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ).padding(bottom: 24),
        Image.asset(
          weatherData.weatherImagePath,
        ).padding(left: 32, right: 32, bottom: 24),
        Text(
          "${weatherData.currentWeather?.temperature?.toStringAsFixed(1)} °C",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
