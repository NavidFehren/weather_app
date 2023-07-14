import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/shared/widgets/loading_error_widget.dart';
import 'package:weather_app/weather/blocs/weather_cubit.dart';
import 'package:weather_app/weather/widgets/weather_overview_initial.dart';
import 'package:weather_app/weather/widgets/weather_overview_loaded.dart';
import 'package:weather_app/weather/widgets/weather_overview_loading.dart';

class WeatherOverview extends StatelessWidget {
  const WeatherOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherInitial) {
          return const WeatherOverviewInitial();
        } else if (state is WeatherLoading) {
          return const WeatherOverviewLoading();
        } else if (state is WeatherLoaded) {
          return WeatherOverviewLoaded(
            city: state.city,
            weatherData: state.weatherData,
          );
        } else if (state is WeatherError) {
          return const LoadingErrorWidget();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
