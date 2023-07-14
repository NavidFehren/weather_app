part of 'bottom_navigation_cubit.dart';

class BottomNavigationState {
  final int currentIndex;
  final BottomNavigationItem currentItem;

  const BottomNavigationState({
    this.currentIndex = 0,
    this.currentItem = BottomNavigationItem.home,
  });

  BottomNavigationState copyWith({
    int? currentIndex,
    BottomNavigationItem? currentItem,
  }) {
    return BottomNavigationState(
      currentIndex: currentIndex ?? this.currentIndex,
      currentItem: currentItem ?? this.currentItem,
    );
  }
}
