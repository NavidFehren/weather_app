import 'package:flutter/material.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

class AppTheme {
  /// The theme data for the app.
  static final ThemeData themeData = ThemeData(
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: AppColors.darkGreen.value,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      surfaceTintColor: MaterialStateProperty.all(Colors.transparent),
      elevation: MaterialStateProperty.all(5),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.darkGreen.value,
    ),
    useMaterial3: true,
  );
}
