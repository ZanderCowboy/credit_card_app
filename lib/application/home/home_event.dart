part of 'home_bloc.dart';

/// Bloc events for Home page
@freezed
class HomeEvent with _$HomeEvent {
  /// Enter button pressed on Home page
  const factory HomeEvent.onPressedEnter() = onPressedEnter;

  /// Scan button pressed on Home page
  const factory HomeEvent.onPressedScan() = onPressedScan;

  /// History button pressed on Home page
  const factory HomeEvent.onPressedHistory() = onPressedHistory;

  /// Settings button pressed on Home page
  const factory HomeEvent.onPressedSettings() = onPressedSettings;

  /// Logout button pressed on Home page
  const factory HomeEvent.onPressedLogout() = onPressedLogout;
}
