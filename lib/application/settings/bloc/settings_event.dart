part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.onAddCountry(String? selectedCountry) =
      onAddCountry;
  const factory SettingsEvent.onCountryDelete(BannedCountries bannedCountry) =
      onCountryDelete;
  const factory SettingsEvent.onCountryPressed(
      BannedCountries bannedCountries) = onCountryPressed;
}
