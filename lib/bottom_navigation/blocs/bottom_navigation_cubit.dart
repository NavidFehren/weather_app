import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bottom_navigation/models/bottom_navigation_item.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState());

  /// Sets the current index of the bottom navigation bar.
  void setCurrentIndex(int index) {
    emit(state.copyWith(
      currentIndex: index,
      currentItem: BottomNavigationItem.values[index],
    ));
  }
}
