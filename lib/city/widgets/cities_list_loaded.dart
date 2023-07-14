import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/city/blocs/city_cubit.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/weather/blocs/weather_cubit.dart';

class CitiesListLoaded extends StatelessWidget {
  final List<City> cities;

  const CitiesListLoaded({Key? key, required this.cities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: SearchBar(
            leading: const Icon(
              Icons.search,
              color: Colors.white,
            ).padding(left: 8),
            onChanged: (value) =>
                context.read<CityCubit>().setSearchQuery(value),
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: cities.length,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final city = cities[index];

              return ListTile(
                title: Text(city.name),
                subtitle: Text(city.state),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                tileColor: Colors.grey[100],
                onTap: () {
                  context.read<WeatherCubit>().getWeather(city: city);
                  context.read<BottomNavigationCubit>().setCurrentIndex(0);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
