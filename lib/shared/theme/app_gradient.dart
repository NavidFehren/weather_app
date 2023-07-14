import 'package:flutter/material.dart';
import 'package:weather_app/shared/theme/app_colors.dart';

enum AppGradient {
  blue;

  LinearGradient get value {
    switch (this) {
      case AppGradient.blue:
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.lightBlue.value,
            AppColors.lightYellow.value,
          ],
        );
    }
  }
}
