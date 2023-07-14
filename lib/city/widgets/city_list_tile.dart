import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/weather/blocs/weather_cubit.dart';

class CityListTile extends StatelessWidget {
  final City city;

  const CityListTile({
    super.key,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(city.name),
      titleTextStyle: Theme.of(context).textTheme.titleMedium,
      subtitle: Text(city.state),
      subtitleTextStyle: Theme.of(context).textTheme.bodyMedium,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      onTap: () {
        context.read<WeatherCubit>().getWeather(city: city);
        context.read<BottomNavigationCubit>().setCurrentIndex(0);
      },
    );
  }
}
