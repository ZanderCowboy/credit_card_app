// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banned_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannedCountry {
  @HiveField(0, defaultValue: '')
  String get country => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: false)
  bool get isBanned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannedCountryCopyWith<BannedCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedCountryCopyWith<$Res> {
  factory $BannedCountryCopyWith(
          BannedCountry value, $Res Function(BannedCountry) then) =
      _$BannedCountryCopyWithImpl<$Res, BannedCountry>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String country,
      @HiveField(1, defaultValue: false) bool isBanned});
}

/// @nodoc
class _$BannedCountryCopyWithImpl<$Res, $Val extends BannedCountry>
    implements $BannedCountryCopyWith<$Res> {
  _$BannedCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? isBanned = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannedCountryImplCopyWith<$Res>
    implements $BannedCountryCopyWith<$Res> {
  factory _$$BannedCountryImplCopyWith(
          _$BannedCountryImpl value, $Res Function(_$BannedCountryImpl) then) =
      __$$BannedCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: '') String country,
      @HiveField(1, defaultValue: false) bool isBanned});
}

/// @nodoc
class __$$BannedCountryImplCopyWithImpl<$Res>
    extends _$BannedCountryCopyWithImpl<$Res, _$BannedCountryImpl>
    implements _$$BannedCountryImplCopyWith<$Res> {
  __$$BannedCountryImplCopyWithImpl(
      _$BannedCountryImpl _value, $Res Function(_$BannedCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? isBanned = null,
  }) {
    return _then(_$BannedCountryImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BannedCountryImpl implements _BannedCountry {
  const _$BannedCountryImpl(
      {@HiveField(0, defaultValue: '') required this.country,
      @HiveField(1, defaultValue: false) required this.isBanned});

  @override
  @HiveField(0, defaultValue: '')
  final String country;
  @override
  @HiveField(1, defaultValue: false)
  final bool isBanned;

  @override
  String toString() {
    return 'BannedCountry(country: $country, isBanned: $isBanned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannedCountryImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, isBanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannedCountryImplCopyWith<_$BannedCountryImpl> get copyWith =>
      __$$BannedCountryImplCopyWithImpl<_$BannedCountryImpl>(this, _$identity);
}

abstract class _BannedCountry implements BannedCountry {
  const factory _BannedCountry(
          {@HiveField(0, defaultValue: '') required final String country,
          @HiveField(1, defaultValue: false) required final bool isBanned}) =
      _$BannedCountryImpl;

  @override
  @HiveField(0, defaultValue: '')
  String get country;
  @override
  @HiveField(1, defaultValue: false)
  bool get isBanned;
  @override
  @JsonKey(ignore: true)
  _$$BannedCountryImplCopyWith<_$BannedCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
