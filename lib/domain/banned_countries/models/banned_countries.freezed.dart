// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banned_countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BannedCountries {
  @HiveField(0)
  String get bannedCountry => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isBanned => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannedCountriesCopyWith<BannedCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannedCountriesCopyWith<$Res> {
  factory $BannedCountriesCopyWith(
          BannedCountries value, $Res Function(BannedCountries) then) =
      _$BannedCountriesCopyWithImpl<$Res, BannedCountries>;
  @useResult
  $Res call({@HiveField(0) String bannedCountry, @HiveField(1) bool isBanned});
}

/// @nodoc
class _$BannedCountriesCopyWithImpl<$Res, $Val extends BannedCountries>
    implements $BannedCountriesCopyWith<$Res> {
  _$BannedCountriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
    Object? isBanned = null,
  }) {
    return _then(_value.copyWith(
      bannedCountry: null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BannedCountriesCopyWith<$Res>
    implements $BannedCountriesCopyWith<$Res> {
  factory _$$_BannedCountriesCopyWith(
          _$_BannedCountries value, $Res Function(_$_BannedCountries) then) =
      __$$_BannedCountriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String bannedCountry, @HiveField(1) bool isBanned});
}

/// @nodoc
class __$$_BannedCountriesCopyWithImpl<$Res>
    extends _$BannedCountriesCopyWithImpl<$Res, _$_BannedCountries>
    implements _$$_BannedCountriesCopyWith<$Res> {
  __$$_BannedCountriesCopyWithImpl(
      _$_BannedCountries _value, $Res Function(_$_BannedCountries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
    Object? isBanned = null,
  }) {
    return _then(_$_BannedCountries(
      bannedCountry: null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as String,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BannedCountries implements _BannedCountries {
  const _$_BannedCountries(
      {@HiveField(0) required this.bannedCountry,
      @HiveField(1) required this.isBanned});

  @override
  @HiveField(0)
  final String bannedCountry;
  @override
  @HiveField(1)
  final bool isBanned;

  @override
  String toString() {
    return 'BannedCountries(bannedCountry: $bannedCountry, isBanned: $isBanned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannedCountries &&
            (identical(other.bannedCountry, bannedCountry) ||
                other.bannedCountry == bannedCountry) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountry, isBanned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BannedCountriesCopyWith<_$_BannedCountries> get copyWith =>
      __$$_BannedCountriesCopyWithImpl<_$_BannedCountries>(this, _$identity);
}

abstract class _BannedCountries implements BannedCountries {
  const factory _BannedCountries(
      {@HiveField(0) required final String bannedCountry,
      @HiveField(1) required final bool isBanned}) = _$_BannedCountries;

  @override
  @HiveField(0)
  String get bannedCountry;
  @override
  @HiveField(1)
  bool get isBanned;
  @override
  @JsonKey(ignore: true)
  _$$_BannedCountriesCopyWith<_$_BannedCountries> get copyWith =>
      throw _privateConstructorUsedError;
}
