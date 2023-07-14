import 'package:flutter/material.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/city/widgets/city_list.dart';
import 'package:weather_app/city/widgets/city_search_bar.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';

class CitiesListLoaded extends StatelessWidget {
  final List<City> cities;

  const CitiesListLoaded({Key? key, required this.cities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CitySearchBar().padding(bottom: 24),
        CityList(cities: cities),
      ],
    );
  }
}
