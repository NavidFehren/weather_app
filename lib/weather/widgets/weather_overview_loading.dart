import 'package:flutter/material.dart';

class WeatherOverviewLoading extends StatelessWidget {
  const WeatherOverviewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
