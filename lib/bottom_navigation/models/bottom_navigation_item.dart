import 'package:flutter/material.dart';
import 'package:weather_app/city/widgets/cities_page.dart';
import 'package:weather_app/home/widgets/home_page.dart';

/// The items in the bottom navigation bar.
enum BottomNavigationItem {
  home,
  cities;

  /// The label to show in the bottom navigation bar.
  String get label {
    switch (this) {
      case BottomNavigationItem.home:
        return 'Home';
      case BottomNavigationItem.cities:
        return 'Cities';
    }
  }

  /// The icon to show in the bottom navigation bar.
  IconData get icon {
    switch (this) {
      case BottomNavigationItem.home:
        return Icons.home;
      case BottomNavigationItem.cities:
        return Icons.location_city;
    }
  }

  /// The content to show in the body of the [Scaffold].
  Widget get content {
    switch (this) {
      case BottomNavigationItem.home:
        return const HomePage();
      case BottomNavigationItem.cities:
        return const CitiesPage();
    }
  }
}
