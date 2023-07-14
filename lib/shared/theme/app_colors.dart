import 'package:flutter/material.dart';

enum AppColors {
  lightBlue,
  lightYellow;

  Color get value {
    switch (this) {
      case AppColors.lightBlue:
        return const Color(0xFF2BC0E4);
      case AppColors.lightYellow:
        return const Color(0xFFEAECC6);
    }
  }
}
