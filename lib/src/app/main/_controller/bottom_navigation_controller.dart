import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bottom_navigation_controller.freezed.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.home(int index) = _Home;
  const factory BottomNavigationState.activity(int index) = _Activity;
  const factory BottomNavigationState.payments(int index) = _Payments;
  const factory BottomNavigationState.account(int index) = _Account;
}

@injectable
class BottomNavigationController extends StateNotifier<BottomNavigationState> {
  BottomNavigationController() : super(const BottomNavigationState.home(0));

  void goTo(int index) {
    Map<int, BottomNavigationState> _pages = {
      0: const BottomNavigationState.home(0),
      1: const BottomNavigationState.activity(1),
      2: const BottomNavigationState.payments(2),
      3: const BottomNavigationState.account(3),
    };

    if (index == 3) return;
    state = _pages[index]!;
  }
}
