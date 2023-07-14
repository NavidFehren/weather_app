import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/city/services/city_service.dart';

class CityRepository {
  final CityService cityService;

  CityRepository({required this.cityService});

  Future<List<City>> getCities() async {
    final cities = await cityService.getCities();
    final mappedCities = _mapCities(cities);
    final sortedCities = _sortCities(mappedCities);

    return sortedCities;
  }

  List<City> _mapCities(List<dynamic> cities) {
    return cities.map((city) => City.fromJson(city)).toList();
  }

  List<City> _sortCities(List<City> cities) {
    return cities..sort((a, b) => a.name.compareTo(b.name));
  }
}
