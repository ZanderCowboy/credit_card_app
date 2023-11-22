part of 'settings_bloc.dart';

/// SettingsBloc's states
@freezed
class SettingsState with _$SettingsState {
  /// SettingsState constructor
  const factory SettingsState({
    required BannedCountry bannedCountries,
    required bool isChecked,
    required bool isUnchecked,
    required bool isLoading,
    required bool isDeleted,
    required bool isAdded,
    required String? errorMessage,
  }) = _SettingsState;

  /// Initial SettingsState, giving all partial state's values
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
