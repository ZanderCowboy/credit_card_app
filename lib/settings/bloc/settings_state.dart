part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState() = _SettingsState;

  const SettingsState._();

  const factory SettingsState.initial() = Initial;
  const factory SettingsState.loading() = Loading;
  const factory SettingsState.loaded() = Loaded;
  const factory SettingsState.error() = ErrorS;
}
