import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/city/models/city.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

class WeatherCardHeader extends StatelessWidget {
  final City city;

  const WeatherCardHeader({
    super.key,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on,
          size: 32,
          color: AppColors.darkGreen.value,
        ).padding(right: 8),
        Text(
          city.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: AppColors.darkGreen.value,
            shape: BoxShape.circle, // Circular shape
          ),
          child: IconButton(
            onPressed: () {
              context.read<BottomNavigationCubit>().setCurrentIndex(1);
            },
            icon: const Icon(
              Icons.search, // Search icon
              size: 24, // Icon size
              color: Colors.white, // Icon color
            ),
            padding: const EdgeInsets.all(0), // Remove padding if any
          ),
        )
      ],
    );
  }
}
