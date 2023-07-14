import 'package:flutter/material.dart';
import 'package:weather_app/shared/extensions/padding_extension.dart';
import 'package:weather_app/weather/widgets/weather_overview.dart';
import 'package:weather_app/welcome_message/widgets/welcome_message.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const WelcomeMessage().padding(bottom: 32),
        const WeatherOverview(),
      ],
    );
  }
}
