part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required BannedCountry bannedCountries,
    required bool isChecked,
    required bool isUnchecked,
    required bool isLoading,
    required bool isDeleted,
    required bool isAdded,
    required String? errorMessage,
  }) = _SettingsState;

  const SettingsState._();

  factory SettingsState.initial() => SettingsState(
        bannedCountries: BannedCountry.empty(),
        isChecked: false,
        isUnchecked: false,
        isLoading: false,
        isDeleted: false,
        isAdded: false,
        errorMessage: '',
      );
}
