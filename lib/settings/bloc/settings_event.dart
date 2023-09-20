part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => [];
}

final class SettingsInitial extends SettingsEvent {}

class ToggleCountryEvent extends SettingsEvent {
  final String country;

  const ToggleCountryEvent(this.country);
}
