import 'package:flutter/material.dart';
import 'package:weather_app/app/app_bloc_provider.dart';
import 'package:weather_app/app/app_repository_provider.dart';
import 'package:weather_app/app/app_service_provider.dart';
import 'package:weather_app/home/widgets/home_screen.dart';
import 'package:weather_app/shared/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: AppServiceProvider(
        child: AppRepositoryProvider(
          child: const AppBlocProvider(
            child: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
