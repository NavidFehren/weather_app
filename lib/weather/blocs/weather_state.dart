part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final City city;
  final WeatherData weatherData;

  WeatherLoaded({required this.city, required this.weatherData});
}

class WeatherError extends WeatherState {}
