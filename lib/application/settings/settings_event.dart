part of 'settings_bloc.dart';

/// SettingsBloc's events
@freezed
class SettingsEvent with _$SettingsEvent {
  /// Add button pressed on SettingsPage
  const factory SettingsEvent.onPressedAddCountry(String? selectedCountry) =
      OnPressedAddCountry;

  /// Delete long-pressed on SettingsPage
  const factory SettingsEvent.onLongPressedDeleteCountry(
    BannedCountry bannedCountry,
  ) = OnLongPressedDeleteCountry;

  /// Country pressed on SettingsPage
  const factory SettingsEvent.onPressedCountry(BannedCountry bannedCountry) =
      OnPressedCountry;
}
