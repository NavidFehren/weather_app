part of 'city_cubit.dart';

@immutable
abstract class CityState {}

class CityInitial extends CityState {}

class CityLoading extends CityState {}

class CityLoaded extends CityState {
  final List<City> cities;
  final List<City> filteredCities;
  final String searchQuery;

  CityLoaded({
    required this.cities,
    required this.filteredCities,
    this.searchQuery = '',
  });

  CityLoaded copyWith({
    List<City>? filteredCities,
    String? searchQuery,
  }) {
    return CityLoaded(
      cities: cities,
      filteredCities: filteredCities ?? this.filteredCities,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }
}

class CityError extends CityState {}
