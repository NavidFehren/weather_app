import 'package:flutter/material.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/city/widgets/city_list_tile.dart';

class CityList extends StatelessWidget {
  final List<City> cities;

  const CityList({
    super.key,
    required this.cities,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: cities.length,
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => Divider(
          indent: 16,
          endIndent: 16,
          height: 2,
          color: Colors.grey[300],
        ),
        itemBuilder: (context, index) {
          final city = cities[index];

          return CityListTile(city: city);
        },
      ),
    );
  }
}
