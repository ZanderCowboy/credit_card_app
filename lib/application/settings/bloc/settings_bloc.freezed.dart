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
  BannedCountries get bannedCountries => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDuplicate => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {BannedCountries bannedCountries,
      String? country,
      bool isChecked,
      bool isLoading,
      bool isDuplicate,
      String? errorMessage});

  $BannedCountriesCopyWith<$Res> get bannedCountries;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountries = null,
    Object? country = freezed,
    Object? isChecked = null,
    Object? isLoading = null,
    Object? isDuplicate = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      bannedCountries: null == bannedCountries
          ? _value.bannedCountries
          : bannedCountries // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountriesCopyWith<$Res> get bannedCountries {
    return $BannedCountriesCopyWith<$Res>(_value.bannedCountries, (value) {
      return _then(_value.copyWith(bannedCountries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannedCountries bannedCountries,
      String? country,
      bool isChecked,
      bool isLoading,
      bool isDuplicate,
      String? errorMessage});

  @override
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
    Object? country = freezed,
    Object? isChecked = null,
    Object? isLoading = null,
    Object? isDuplicate = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      bannedCountries: null == bannedCountries
          ? _value.bannedCountries
          : bannedCountries // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState with DiagnosticableTreeMixin {
  const _$SettingsStateImpl(
      {required this.bannedCountries,
      this.country,
      required this.isChecked,
      required this.isLoading,
      required this.isDuplicate,
      required this.errorMessage})
      : super._();

  @override
  final BannedCountries bannedCountries;
  @override
  final String? country;
  @override
  final bool isChecked;
  @override
  final bool isLoading;
  @override
  final bool isDuplicate;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(bannedCountries: $bannedCountries, country: $country, isChecked: $isChecked, isLoading: $isLoading, isDuplicate: $isDuplicate, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('bannedCountries', bannedCountries))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isDuplicate', isDuplicate))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.bannedCountries, bannedCountries) ||
                other.bannedCountries == bannedCountries) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDuplicate, isDuplicate) ||
                other.isDuplicate == isDuplicate) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountries, country,
      isChecked, isLoading, isDuplicate, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {required final BannedCountries bannedCountries,
      final String? country,
      required final bool isChecked,
      required final bool isLoading,
      required final bool isDuplicate,
      required final String? errorMessage}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  @override
  BannedCountries get bannedCountries;
  @override
  String? get country;
  @override
  bool get isChecked;
  @override
  bool get isLoading;
  @override
  bool get isDuplicate;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
