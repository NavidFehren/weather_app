import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/welcome_message/blocs/welcome_message_cubit.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeMessageCubit()..setDayTimeText(),
      child: BlocBuilder<WelcomeMessageCubit, WelcomeMessageState>(
        builder: (context, state) {
          return Text(
            state.dayTimeText,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          );
        },
      ),
    );
  }
}
