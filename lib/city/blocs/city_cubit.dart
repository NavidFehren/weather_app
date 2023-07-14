import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/city/repositories/city_repository.dart';

part 'city_state.dart';

class CityCubit extends Cubit<CityState> {
  final CityRepository cityRepository;

  CityCubit({required this.cityRepository}) : super(CityInitial());

  /// Read the cities and emit the state
  void getCities() async {
    final cities = await _readCitiesFromJson();
    emit(CityLoaded(cities: cities, filteredCities: cities));
  }

  /// Read the cities from the json
  Future<List<City>> _readCitiesFromJson() async {
    return await cityRepository.getCities();
  }

  /// Filter the cities by the search query and emit the state
  void setSearchQuery(String query) {
    final currentState = state as CityLoaded;

    final filteredCities = _filterCities(
      cities: currentState.cities,
      query: query,
    );

    emit(currentState.copyWith(
      filteredCities: filteredCities,
      searchQuery: query,
    ));
  }

  /// Filter the cities by the search query
  List<City> _filterCities({
    required List<City> cities,
    required String query,
  }) {
    return cities.where((city) {
      return city.name.toLowerCase().startsWith(query.toLowerCase());
    }).toList();
  }
}
