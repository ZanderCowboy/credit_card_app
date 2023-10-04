part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.onAddCountry(String? selectedCountry) =
      onAddCountry;
  const factory SettingsEvent.onCountryDelete() = onCountryDelete;
  const factory SettingsEvent.onCountryPressed(String country, bool? value) =
      onCountryPressed;
}
