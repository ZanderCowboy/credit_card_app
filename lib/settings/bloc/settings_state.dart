part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({required BannedCountries bannedCountries}) =
      _SettingsState;

  const SettingsState._();

  factory SettingsState.initial() => const SettingsState(
          bannedCountries: BannedCountries(
        bannedCountry: '',
        isBanned: false,
      ));
  const factory SettingsState.loading() = Loading;
  const factory SettingsState.loaded() = Loaded;
  // factory SettingsState.loaded() =>
  //     SettingsState(b);
  const factory SettingsState.error() = ErrorS;

  const factory SettingsState.duplicate() = SettingsDuplicate;

  @override
  List<Object?> get props => throw UnimplementedError();
}
