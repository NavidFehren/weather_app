import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/weather/models/weather_data.dart';
import 'package:weather_app/weather/repositories/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherCubit({required this.weatherRepository}) : super(WeatherInitial());

  Future<void> getWeather({required City city}) async {
    emit(WeatherLoading());

    try {
      final weatherData = await weatherRepository.getWeather(
        latitude: city.latitude,
        longitude: city.longitude,
      );
      emit(WeatherLoaded(city: city, weatherData: weatherData));
    } catch (e) {
      emit(WeatherError());
    }
  }
}
