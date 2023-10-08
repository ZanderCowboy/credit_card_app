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
    required TResult Function(BannedCountries bannedCountry) onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function(BannedCountries bannedCountry)? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function(BannedCountries bannedCountry)? onCountryDelete,
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
    required TResult Function(BannedCountries bannedCountry) onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onAddCountry(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function(BannedCountries bannedCountry)? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onAddCountry?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function(BannedCountries bannedCountry)? onCountryDelete,
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
  @useResult
  $Res call({BannedCountries bannedCountry});

  $BannedCountriesCopyWith<$Res> get bannedCountry;
}

/// @nodoc
class __$$onCountryDeleteImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$onCountryDeleteImpl>
    implements _$$onCountryDeleteImplCopyWith<$Res> {
  __$$onCountryDeleteImplCopyWithImpl(
      _$onCountryDeleteImpl _value, $Res Function(_$onCountryDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
  }) {
    return _then(_$onCountryDeleteImpl(
      null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountriesCopyWith<$Res> get bannedCountry {
    return $BannedCountriesCopyWith<$Res>(_value.bannedCountry, (value) {
      return _then(_value.copyWith(bannedCountry: value));
    });
  }
}

/// @nodoc

class _$onCountryDeleteImpl
    with DiagnosticableTreeMixin
    implements onCountryDelete {
  const _$onCountryDeleteImpl(this.bannedCountry);

  @override
  final BannedCountries bannedCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onCountryDelete(bannedCountry: $bannedCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.onCountryDelete'))
      ..add(DiagnosticsProperty('bannedCountry', bannedCountry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onCountryDeleteImpl &&
            (identical(other.bannedCountry, bannedCountry) ||
                other.bannedCountry == bannedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onCountryDeleteImplCopyWith<_$onCountryDeleteImpl> get copyWith =>
      __$$onCountryDeleteImplCopyWithImpl<_$onCountryDeleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onAddCountry,
    required TResult Function(BannedCountries bannedCountry) onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onCountryDelete(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function(BannedCountries bannedCountry)? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onCountryDelete?.call(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function(BannedCountries bannedCountry)? onCountryDelete,
    TResult Function(String country, bool? value)? onCountryPressed,
    required TResult orElse(),
  }) {
    if (onCountryDelete != null) {
      return onCountryDelete(bannedCountry);
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
  const factory onCountryDelete(final BannedCountries bannedCountry) =
      _$onCountryDeleteImpl;

  BannedCountries get bannedCountry;
  @JsonKey(ignore: true)
  _$$onCountryDeleteImplCopyWith<_$onCountryDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(BannedCountries bannedCountry) onCountryDelete,
    required TResult Function(String country, bool? value) onCountryPressed,
  }) {
    return onCountryPressed(country, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onAddCountry,
    TResult? Function(BannedCountries bannedCountry)? onCountryDelete,
    TResult? Function(String country, bool? value)? onCountryPressed,
  }) {
    return onCountryPressed?.call(country, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onAddCountry,
    TResult Function(BannedCountries bannedCountry)? onCountryDelete,
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
  bool get isChecked => throw _privateConstructorUsedError;
  bool get isUnchecked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  bool get isDuplicate => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

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
      bool isChecked,
      bool isUnchecked,
      bool isLoading,
      bool isDeleted,
      bool isDuplicate,
      bool isAdded,
      String? errorMessage,
      String? country});

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
    Object? isChecked = null,
    Object? isUnchecked = null,
    Object? isLoading = null,
    Object? isDeleted = null,
    Object? isDuplicate = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      bannedCountries: null == bannedCountries
          ? _value.bannedCountries
          : bannedCountries // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnchecked: null == isUnchecked
          ? _value.isUnchecked
          : isUnchecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
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
      bool isChecked,
      bool isUnchecked,
      bool isLoading,
      bool isDeleted,
      bool isDuplicate,
      bool isAdded,
      String? errorMessage,
      String? country});

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
    Object? isChecked = null,
    Object? isUnchecked = null,
    Object? isLoading = null,
    Object? isDeleted = null,
    Object? isDuplicate = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
    Object? country = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      bannedCountries: null == bannedCountries
          ? _value.bannedCountries
          : bannedCountries // ignore: cast_nullable_to_non_nullable
              as BannedCountries,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnchecked: null == isUnchecked
          ? _value.isUnchecked
          : isUnchecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isDuplicate: null == isDuplicate
          ? _value.isDuplicate
          : isDuplicate // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl extends _SettingsState with DiagnosticableTreeMixin {
  const _$SettingsStateImpl(
      {required this.bannedCountries,
      required this.isChecked,
      required this.isUnchecked,
      required this.isLoading,
      required this.isDeleted,
      required this.isDuplicate,
      required this.isAdded,
      required this.errorMessage,
      this.country})
      : super._();

  @override
  final BannedCountries bannedCountries;
  @override
  final bool isChecked;
  @override
  final bool isUnchecked;
  @override
  final bool isLoading;
  @override
  final bool isDeleted;
  @override
  final bool isDuplicate;
  @override
  final bool isAdded;
  @override
  final String? errorMessage;
  @override
  final String? country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(bannedCountries: $bannedCountries, isChecked: $isChecked, isUnchecked: $isUnchecked, isLoading: $isLoading, isDeleted: $isDeleted, isDuplicate: $isDuplicate, isAdded: $isAdded, errorMessage: $errorMessage, country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('bannedCountries', bannedCountries))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('isUnchecked', isUnchecked))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('isDuplicate', isDuplicate))
      ..add(DiagnosticsProperty('isAdded', isAdded))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.bannedCountries, bannedCountries) ||
                other.bannedCountries == bannedCountries) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.isUnchecked, isUnchecked) ||
                other.isUnchecked == isUnchecked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isDuplicate, isDuplicate) ||
                other.isDuplicate == isDuplicate) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bannedCountries,
      isChecked,
      isUnchecked,
      isLoading,
      isDeleted,
      isDuplicate,
      isAdded,
      errorMessage,
      country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {required final BannedCountries bannedCountries,
      required final bool isChecked,
      required final bool isUnchecked,
      required final bool isLoading,
      required final bool isDeleted,
      required final bool isDuplicate,
      required final bool isAdded,
      required final String? errorMessage,
      final String? country}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  @override
  BannedCountries get bannedCountries;
  @override
  bool get isChecked;
  @override
  bool get isUnchecked;
  @override
  bool get isLoading;
  @override
  bool get isDeleted;
  @override
  bool get isDuplicate;
  @override
  bool get isAdded;
  @override
  String? get errorMessage;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
