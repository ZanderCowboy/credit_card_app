part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.onAddCountry() = onAddCountry;
  const factory SettingsEvent.onCountrySubmit() = onCountrySubmit;
  const factory SettingsEvent.onCountryPressed() = onCountryPressed;
}
