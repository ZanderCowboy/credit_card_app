part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required BannedCountries bannedCountries,
    String? country,
    required bool isChecked,
    required bool isLoading,
    required bool isDuplicate,
    required String? errorMessage,
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
