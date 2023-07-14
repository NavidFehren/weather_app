import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/blocs/bottom_navigation_cubit.dart';
import 'package:weather_app/weather/blocs/weather_cubit.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;

  const AppBlocProvider({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavigationCubit()),
        BlocProvider(
          create: (_) => WeatherCubit(
            weatherRepository: context.read(),
          ),
        ),
      ],
      child: child,
    );
  }
}
