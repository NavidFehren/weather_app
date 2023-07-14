import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/blocs/city_cubit.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';

class CitySearchBar extends StatelessWidget {
  const CitySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(
        Icons.search,
      ).padding(left: 8),
      onChanged: (value) => context.read<CityCubit>().setSearchQuery(value),
    );
  }
}
