part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool isChecked,
    String? country,
  }) = _SettingsState;

  const SettingsState._();

  factory SettingsState.initial() => const SettingsState(
        country: '',
        isChecked: false,
      );
  const factory SettingsState.loading() = Loading;
  // const factory SettingsState.loaded() = Loaded;
  factory SettingsState.loaded(bool isChecked) =>
      SettingsState(country: '', isChecked: isChecked);
  const factory SettingsState.error() = ErrorS;

  const factory SettingsState.duplicate() = SettingsDuplicate;
}
