import 'package:flutter/material.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

enum AppGradient {
  green;

  LinearGradient get value {
    switch (this) {
      case AppGradient.green:
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.darkGreen.value,
            AppColors.lightGreen.value,
          ],
        );
    }
  }
}
