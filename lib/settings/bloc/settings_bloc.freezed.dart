// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onAddCountry,
    required TResult Function() onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function()? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function()? onCountryDelete,
    TResult Function(String country, bool? value)? onCountryPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onAddCountry value) onAddCountry,
    required TResult Function(onCountryDelete value) onCountryDelete,
    required TResult Function(onCountryPressed value) onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onAddCountry value)? onAddCountry,
    TResult? Function(onCountryDelete value)? onCountryDelete,
    TResult? Function(onCountryPressed value)? onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onAddCountry value)? onAddCountry,
    TResult Function(onCountryDelete value)? onCountryDelete,
    TResult Function(onCountryPressed value)? onCountryPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onAddCountryImplCopyWith<$Res> {
  factory _$$onAddCountryImplCopyWith(
          _$onAddCountryImpl value, $Res Function(_$onAddCountryImpl) then) =
      __$$onAddCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class __$$onAddCountryImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$onAddCountryImpl>
    implements _$$onAddCountryImplCopyWith<$Res> {
  __$$onAddCountryImplCopyWithImpl(
      _$onAddCountryImpl _value, $Res Function(_$onAddCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
  }) {
    return _then(_$onAddCountryImpl(
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$onAddCountryImpl with DiagnosticableTreeMixin implements onAddCountry {
  const _$onAddCountryImpl(this.selectedCountry);

  @override
  final String? selectedCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onAddCountry(selectedCountry: $selectedCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.onAddCountry'))
      ..add(DiagnosticsProperty('selectedCountry', selectedCountry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onAddCountryImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onAddCountryImplCopyWith<_$onAddCountryImpl> get copyWith =>
      __$$onAddCountryImplCopyWithImpl<_$onAddCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onAddCountry,
    required TResult Function() onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onAddCountry(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function()? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onAddCountry?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function()? onCountryDelete,
    TResult Function(String country, bool? value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onAddCountry != null) {
      return onAddCountry(selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onAddCountry value) onAddCountry,
    required TResult Function(onCountryDelete value) onCountryDelete,
    required TResult Function(onCountryPressed value) onCountryPressed,
  }) {
    return onAddCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onAddCountry value)? onAddCountry,
    TResult? Function(onCountryDelete value)? onCountryDelete,
    TResult? Function(onCountryPressed value)? onCountryPressed,
  }) {
    return onAddCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onAddCountry value)? onAddCountry,
    TResult Function(onCountryDelete value)? onCountryDelete,
    TResult Function(onCountryPressed value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onAddCountry != null) {
      return onAddCountry(this);
    }
    return orElse();
  }
}

abstract class onAddCountry implements SettingsEvent {
  const factory onAddCountry(final String? selectedCountry) =
      _$onAddCountryImpl;

  String? get selectedCountry;
  @JsonKey(ignore: true)
  _$$onAddCountryImplCopyWith<_$onAddCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onCountryDeleteImplCopyWith<$Res> {
  factory _$$onCountryDeleteImplCopyWith(_$onCountryDeleteImpl value,
          $Res Function(_$onCountryDeleteImpl) then) =
      __$$onCountryDeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onCountryDeleteImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$onCountryDeleteImpl>
    implements _$$onCountryDeleteImplCopyWith<$Res> {
  __$$onCountryDeleteImplCopyWithImpl(
      _$onCountryDeleteImpl _value, $Res Function(_$onCountryDeleteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onCountryDeleteImpl
    with DiagnosticableTreeMixin
    implements onCountryDelete {
  const _$onCountryDeleteImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onCountryDelete()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'SettingsEvent.onCountryDelete'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onCountryDeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onAddCountry,
    required TResult Function() onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onCountryDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function()? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onCountryDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function()? onCountryDelete,
    TResult Function(String country, bool? value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onCountryDelete != null) {
      return onCountryDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onAddCountry value) onAddCountry,
    required TResult Function(onCountryDelete value) onCountryDelete,
    required TResult Function(onCountryPressed value) onCountryPressed,
  }) {
    return onCountryDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onAddCountry value)? onAddCountry,
    TResult? Function(onCountryDelete value)? onCountryDelete,
    TResult? Function(onCountryPressed value)? onCountryPressed,
  }) {
    return onCountryDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onAddCountry value)? onAddCountry,
    TResult Function(onCountryDelete value)? onCountryDelete,
    TResult Function(onCountryPressed value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onCountryDelete != null) {
      return onCountryDelete(this);
    }
    return orElse();
  }
}

abstract class onCountryDelete implements SettingsEvent {
  const factory onCountryDelete() = _$onCountryDeleteImpl;
}

/// @nodoc
abstract class _$$onCountryPressedImplCopyWith<$Res> {
  factory _$$onCountryPressedImplCopyWith(_$onCountryPressedImpl value,
          $Res Function(_$onCountryPressedImpl) then) =
      __$$onCountryPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String country, bool? value});
}

/// @nodoc
class __$$onCountryPressedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$onCountryPressedImpl>
    implements _$$onCountryPressedImplCopyWith<$Res> {
  __$$onCountryPressedImplCopyWithImpl(_$onCountryPressedImpl _value,
      $Res Function(_$onCountryPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? value = freezed,
  }) {
    return _then(_$onCountryPressedImpl(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$onCountryPressedImpl
    with DiagnosticableTreeMixin
    implements onCountryPressed {
  const _$onCountryPressedImpl(this.country, this.value);

  @override
  final String country;
  @override
  final bool? value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onCountryPressed(country: $country, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.onCountryPressed'))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onCountryPressedImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onCountryPressedImplCopyWith<_$onCountryPressedImpl> get copyWith =>
      __$$onCountryPressedImplCopyWithImpl<_$onCountryPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onAddCountry,
    required TResult Function() onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onCountryPressed(country, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function()? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onCountryPressed?.call(country, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function()? onCountryDelete,
    TResult Function(String country, bool? value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onCountryPressed != null) {
      return onCountryPressed(country, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onAddCountry value) onAddCountry,
    required TResult Function(onCountryDelete value) onCountryDelete,
    required TResult Function(onCountryPressed value) onCountryPressed,
  }) {
    return onCountryPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onAddCountry value)? onAddCountry,
    TResult? Function(onCountryDelete value)? onCountryDelete,
    TResult? Function(onCountryPressed value)? onCountryPressed,
  }) {
    return onCountryPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onAddCountry value)? onAddCountry,
    TResult Function(onCountryDelete value)? onCountryDelete,
    TResult Function(onCountryPressed value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onCountryPressed != null) {
      return onCountryPressed(this);
    }
    return orElse();
  }
}

abstract class onCountryPressed implements SettingsEvent {
  const factory onCountryPressed(final String country, final bool? value) =
      _$onCountryPressedImpl;

  String get country;
  bool? get value;
  @JsonKey(ignore: true)
  _$$onCountryPressedImplCopyWith<_$onCountryPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannedCountries bannedCountries});

  $BannedCountriesCopyWith<$Res> get bannedCountries;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountries = null,
  }) {
    return _then(_$SettingsStateImpl(
      bannedCountries: null == bannedCountries
          ? _value.bannedCountries
          : bannedCountries // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountriesCopyWith<$Res> get bannedCountries {
    return $BannedCountriesCopyWith<$Res>(_value.bannedCountries, (value) {
      return _then(_value.copyWith(bannedCountries: value));
    });
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState with DiagnosticableTreeMixin {
  const _$SettingsStateImpl({required this.bannedCountries}) : super._();

  @override
  final BannedCountries bannedCountries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(bannedCountries: $bannedCountries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('bannedCountries', bannedCountries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.bannedCountries, bannedCountries) ||
                other.bannedCountries == bannedCountries));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) {
    return $default(bannedCountries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) {
    return $default?.call(bannedCountries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(bannedCountries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {required final BannedCountries bannedCountries}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  BannedCountries get bannedCountries;
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends Loading with DiagnosticableTreeMixin {
  const _$LoadingImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading extends SettingsState {
  const factory Loading() = _$LoadingImpl;
  const Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl extends Loaded with DiagnosticableTreeMixin {
  const _$LoadedImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsState.loaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded extends SettingsState {
  const factory Loaded() = _$LoadedImpl;
  const Loaded._() : super._();
}

/// @nodoc
abstract class _$$ErrorSImplCopyWith<$Res> {
  factory _$$ErrorSImplCopyWith(
          _$ErrorSImpl value, $Res Function(_$ErrorSImpl) then) =
      __$$ErrorSImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorSImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$ErrorSImpl>
    implements _$$ErrorSImplCopyWith<$Res> {
  __$$ErrorSImplCopyWithImpl(
      _$ErrorSImpl _value, $Res Function(_$ErrorSImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorSImpl extends ErrorS with DiagnosticableTreeMixin {
  const _$ErrorSImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorSImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorS extends SettingsState {
  const factory ErrorS() = _$ErrorSImpl;
  const ErrorS._() : super._();
}

/// @nodoc
abstract class _$$SettingsDuplicateImplCopyWith<$Res> {
  factory _$$SettingsDuplicateImplCopyWith(_$SettingsDuplicateImpl value,
          $Res Function(_$SettingsDuplicateImpl) then) =
      __$$SettingsDuplicateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsDuplicateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsDuplicateImpl>
    implements _$$SettingsDuplicateImplCopyWith<$Res> {
  __$$SettingsDuplicateImplCopyWithImpl(_$SettingsDuplicateImpl _value,
      $Res Function(_$SettingsDuplicateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsDuplicateImpl extends SettingsDuplicate
    with DiagnosticableTreeMixin {
  const _$SettingsDuplicateImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState.duplicate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SettingsState.duplicate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsDuplicateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries) $default, {
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() duplicate,
  }) {
    return duplicate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(BannedCountries bannedCountries)? $default, {
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? duplicate,
  }) {
    return duplicate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(BannedCountries bannedCountries)? $default, {
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SettingsState value) $default, {
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(SettingsDuplicate value) duplicate,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SettingsState value)? $default, {
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(SettingsDuplicate value)? duplicate,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SettingsState value)? $default, {
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(SettingsDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class SettingsDuplicate extends SettingsState {
  const factory SettingsDuplicate() = _$SettingsDuplicateImpl;
  const SettingsDuplicate._() : super._();
}
