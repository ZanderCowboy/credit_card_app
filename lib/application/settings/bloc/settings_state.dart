part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required BannedCountries bannedCountries,
    required bool isChecked,
    required bool isUnchecked,
    required bool isLoading,
    required bool isDeleted,
    required bool isDuplicate,
    required bool isAdded,
    required String? errorMessage,
    String? country,
  }) = _SettingsState;

  const SettingsState._();

  factory SettingsState.initial() => SettingsState(
        bannedCountries: BannedCountries.empty(),
        country: '',
        isChecked: false,
        isUnchecked: false,
        isLoading: false,
        isDeleted: false,
        isDuplicate: false,
        isAdded: false,
        errorMessage: '',
      );
}
