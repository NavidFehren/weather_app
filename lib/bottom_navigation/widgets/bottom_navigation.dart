import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/bottom_navigation/models/bottom_navigation_item.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state.currentIndex,
          onTap: (index) =>
              context.read<BottomNavigationCubit>().setCurrentIndex(index),
          items: BottomNavigationItem.values
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item.icon),
                  label: item.label,
                ),
              )
              .toList(),
        );
      },
    );
  }
}
