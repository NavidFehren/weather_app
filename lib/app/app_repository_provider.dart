import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/repositories/city_repository.dart';
import 'package:weather_app/weather/repositories/weather_repository.dart';

/// Provides all the necessary repositories for the app.
class AppRepositoryProvider extends MultiRepositoryProvider {
  AppRepositoryProvider({Key? key, required Widget child})
      : super(
          key: key,
          child: child,
          providers: _createProviders(),
        );

  static List<RepositoryProvider> _createProviders() {
    return [
      RepositoryProvider<WeatherRepository>(
        create: (c) => WeatherRepository(
          weatherService: c.read(),
        ),
      ),
      RepositoryProvider<CityRepository>(
        create: (c) => CityRepository(
          cityService: c.read(),
        ),
      ),
    ];
  }
}
