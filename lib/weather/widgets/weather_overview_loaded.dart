import 'package:flutter/material.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/weather/models/weather_data.dart';
import 'package:weather_app/weather/widgets/weather_card_header.dart';

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
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          WeatherCardHeader(city: city).padding(bottom: 40),
          Image.asset(
            weatherData.weatherImagePath,
          ).padding(left: 32, right: 32, bottom: 24),
          Text(
            "${weatherData.currentWeather?.temperature?.toStringAsFixed(1)} °C",
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ).paddingAll(16),
    );
  }
}
