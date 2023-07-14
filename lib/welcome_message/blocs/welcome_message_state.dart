part of 'welcome_message_cubit.dart';

class WelcomeMessageState {
  final String dayTimeText;

  const WelcomeMessageState({this.dayTimeText = "Good Day"});

  WelcomeMessageState copyWith({
    String? dayTimeText,
  }) {
    return WelcomeMessageState(
      dayTimeText: dayTimeText ?? this.dayTimeText,
    );
  }
}
