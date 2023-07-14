import 'package:flutter/material.dart';
import 'package:weather_app/app/app_bloc_provider.dart';
import 'package:weather_app/app/app_repository_provider.dart';
import 'package:weather_app/app/app_service_provider.dart';
import 'package:weather_app/home/widgets/home_screen.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        searchBarTheme: SearchBarThemeData(
          backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
          textStyle: MaterialStateProperty.all(
            const TextStyle(color: Colors.white),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
        useMaterial3: true,
      ),
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
