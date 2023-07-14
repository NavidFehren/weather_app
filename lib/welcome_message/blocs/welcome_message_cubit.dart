import 'package:flutter_bloc/flutter_bloc.dart';

part 'welcome_message_state.dart';

class WelcomeMessageCubit extends Cubit<WelcomeMessageState> {
  WelcomeMessageCubit() : super(const WelcomeMessageState());

  /// Sets a text based on the current time of the day.
  void setDayTimeText() {
    final dateTime = DateTime.now();
    emit(state.copyWith(dayTimeText: _getDateTimeText(date: dateTime)));
  }

  /// Returns a text based on the current time of the day.
  String _getDateTimeText({required DateTime date}) {
    final String suffix;

    if (date.hour >= 6 && date.hour < 12) {
      suffix = "Morning";
    } else if (date.hour >= 12 && date.hour < 18) {
      suffix = "Afternoon";
    } else {
      suffix = "Evening";
    }

    return "Good $suffix!";
  }
}
