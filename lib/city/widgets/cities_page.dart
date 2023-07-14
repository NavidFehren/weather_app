import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/city/blocs/city_cubit.dart';
import 'package:weather_app/city/widgets/cities_list_loaded.dart';
import 'package:weather_app/city/widgets/cities_list_loading.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/shared/widgets/loading_error_widget.dart';

class CitiesPage extends StatelessWidget {
  const CitiesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Choose a city",
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ).padding(bottom: 16),
        Expanded(
          child: BlocProvider(
            create: (_) => CityCubit(
              cityRepository: context.read(),
            )..getCities(),
            child: BlocBuilder<CityCubit, CityState>(
              builder: (context, state) {
                if (state is CityInitial || state is CityLoading) {
                  return const CitiesListLoading();
                } else if (state is CityLoaded) {
                  return CitiesListLoaded(cities: state.filteredCities);
                } else if (state is CityError) {
                  return const LoadingErrorWidget();
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ],
    );
  }
}
