part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required BannedCountries bannedCountries,
    required bool isChecked,
    required bool isLoading,
    required bool isDuplicate,
    required String? errorMessage,
    String? country,
  }) = _SettingsState;

  const SettingsState._();

  factory SettingsState.initial() => SettingsState(
        bannedCountries: BannedCountries.empty(),
        country: '',
        isChecked: false,
        isLoading: false,
        isDuplicate: false,
        errorMessage: '',
      );
}
