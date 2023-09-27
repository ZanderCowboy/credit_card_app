part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onEnter() = onEnter;
  const factory HomeEvent.onScan() = onScan;
  const factory HomeEvent.onHistory() = onHistory;
  const factory HomeEvent.onSettings() = onSettings;
  const factory HomeEvent.onLogout() = onLogout;
}
