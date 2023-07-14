import 'package:flutter/material.dart';

enum AppColors {
  lightGreen,
  darkGreen;

  Color get value {
    switch (this) {
      case AppColors.lightGreen:
        return const Color(0xFF425B5E);
      case AppColors.darkGreen:
        return const Color(0xFF133337);
    }
  }
}
