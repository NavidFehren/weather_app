import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';

class WeatherOverviewInitial extends StatelessWidget {
  const WeatherOverviewInitial({Key? key}) : super(key: key);

  void _onSelectLocationTapped(BuildContext context) {
    context.read<BottomNavigationCubit>().setCurrentIndex(1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please Select a Location',
          style: Theme.of(context).textTheme.headlineSmall,
        ).padding(bottom: 16),
        ElevatedButton(
          onPressed: () => _onSelectLocationTapped(context),
          child: Text("Select Location"),
        ),
      ],
    );
  }
}
