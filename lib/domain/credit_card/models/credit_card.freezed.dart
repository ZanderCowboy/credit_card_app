// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreditCard {
  @HiveField(0)
  String get cardNumber => throw _privateConstructorUsedError;
  @HiveField(1)
  String get cardType => throw _privateConstructorUsedError;
  @HiveField(2)
  int get cvvNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  String get issuingCountry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreditCardCopyWith<CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditCardCopyWith<$Res> {
  factory $CreditCardCopyWith(
          CreditCard value, $Res Function(CreditCard) then) =
      _$CreditCardCopyWithImpl<$Res, CreditCard>;
  @useResult
  $Res call(
      {@HiveField(0) String cardNumber,
      @HiveField(1) String cardType,
      @HiveField(2) int cvvNumber,
      @HiveField(3) String issuingCountry});
}

/// @nodoc
class _$CreditCardCopyWithImpl<$Res, $Val extends CreditCard>
    implements $CreditCardCopyWith<$Res> {
  _$CreditCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardType = null,
    Object? cvvNumber = null,
    Object? issuingCountry = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cvvNumber: null == cvvNumber
          ? _value.cvvNumber
          : cvvNumber // ignore: cast_nullable_to_non_nullable
              as int,
      issuingCountry: null == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreditCardCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$_CreditCardCopyWith(
          _$_CreditCard value, $Res Function(_$_CreditCard) then) =
      __$$_CreditCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String cardNumber,
      @HiveField(1) String cardType,
      @HiveField(2) int cvvNumber,
      @HiveField(3) String issuingCountry});
}

/// @nodoc
class __$$_CreditCardCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$_CreditCard>
    implements _$$_CreditCardCopyWith<$Res> {
  __$$_CreditCardCopyWithImpl(
      _$_CreditCard _value, $Res Function(_$_CreditCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardType = null,
    Object? cvvNumber = null,
    Object? issuingCountry = null,
  }) {
    return _then(_$_CreditCard(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cvvNumber: null == cvvNumber
          ? _value.cvvNumber
          : cvvNumber // ignore: cast_nullable_to_non_nullable
              as int,
      issuingCountry: null == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreditCard implements _CreditCard {
  const _$_CreditCard(
      {@HiveField(0) required this.cardNumber,
      @HiveField(1) required this.cardType,
      @HiveField(2) required this.cvvNumber,
      @HiveField(3) required this.issuingCountry});

  @override
  @HiveField(0)
  final String cardNumber;
  @override
  @HiveField(1)
  final String cardType;
  @override
  @HiveField(2)
  final int cvvNumber;
  @override
  @HiveField(3)
  final String issuingCountry;

  @override
  String toString() {
    return 'CreditCard(cardNumber: $cardNumber, cardType: $cardType, cvvNumber: $cvvNumber, issuingCountry: $issuingCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreditCard &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cvvNumber, cvvNumber) ||
                other.cvvNumber == cvvNumber) &&
            (identical(other.issuingCountry, issuingCountry) ||
                other.issuingCountry == issuingCountry));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cardNumber, cardType, cvvNumber, issuingCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      __$$_CreditCardCopyWithImpl<_$_CreditCard>(this, _$identity);
}

abstract class _CreditCard implements CreditCard {
  const factory _CreditCard(
      {@HiveField(0) required final String cardNumber,
      @HiveField(1) required final String cardType,
      @HiveField(2) required final int cvvNumber,
      @HiveField(3) required final String issuingCountry}) = _$_CreditCard;

  @override
  @HiveField(0)
  String get cardNumber;
  @override
  @HiveField(1)
  String get cardType;
  @override
  @HiveField(2)
  int get cvvNumber;
  @override
  @HiveField(3)
  String get issuingCountry;
  @override
  @JsonKey(ignore: true)
  _$$_CreditCardCopyWith<_$_CreditCard> get copyWith =>
      throw _privateConstructorUsedError;
}
