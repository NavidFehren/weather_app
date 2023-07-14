import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/services/city_service.dart';
import 'package:weather_app/weather/services/weather_service.dart';

/// Provides all the necessary services for the app.
class AppServiceProvider extends MultiRepositoryProvider {
  AppServiceProvider({
    Key? key,
    required Widget child,
  }) : super(
          key: key,
          child: child,
          providers: _getProviders(),
        );

  static List<RepositoryProvider<Object>> _getProviders() {
    return [
      RepositoryProvider<WeatherService>(
        create: (_) => WeatherService(),
      ),
      RepositoryProvider<CityService>(
        create: (_) => CityService(),
      ),
    ];
  }
}
