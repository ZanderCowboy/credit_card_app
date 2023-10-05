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
  String get cvvNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  String get issuingCountry => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isValid => throw _privateConstructorUsedError;

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
      @HiveField(2) String cvvNumber,
      @HiveField(3) String issuingCountry,
      @HiveField(4) bool isValid});
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
    Object? isValid = null,
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
              as String,
      issuingCountry: null == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreditCardImplCopyWith<$Res>
    implements $CreditCardCopyWith<$Res> {
  factory _$$CreditCardImplCopyWith(
          _$CreditCardImpl value, $Res Function(_$CreditCardImpl) then) =
      __$$CreditCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String cardNumber,
      @HiveField(1) String cardType,
      @HiveField(2) String cvvNumber,
      @HiveField(3) String issuingCountry,
      @HiveField(4) bool isValid});
}

/// @nodoc
class __$$CreditCardImplCopyWithImpl<$Res>
    extends _$CreditCardCopyWithImpl<$Res, _$CreditCardImpl>
    implements _$$CreditCardImplCopyWith<$Res> {
  __$$CreditCardImplCopyWithImpl(
      _$CreditCardImpl _value, $Res Function(_$CreditCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? cardType = null,
    Object? cvvNumber = null,
    Object? issuingCountry = null,
    Object? isValid = null,
  }) {
    return _then(_$CreditCardImpl(
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
              as String,
      issuingCountry: null == issuingCountry
          ? _value.issuingCountry
          : issuingCountry // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreditCardImpl implements _CreditCard {
  const _$CreditCardImpl(
      {@HiveField(0) required this.cardNumber,
      @HiveField(1) required this.cardType,
      @HiveField(2) required this.cvvNumber,
      @HiveField(3) required this.issuingCountry,
      @HiveField(4) required this.isValid});

  @override
  @HiveField(0)
  final String cardNumber;
  @override
  @HiveField(1)
  final String cardType;
  @override
  @HiveField(2)
  final String cvvNumber;
  @override
  @HiveField(3)
  final String issuingCountry;
  @override
  @HiveField(4)
  final bool isValid;

  @override
  String toString() {
    return 'CreditCard(cardNumber: $cardNumber, cardType: $cardType, cvvNumber: $cvvNumber, issuingCountry: $issuingCountry, isValid: $isValid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditCardImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cvvNumber, cvvNumber) ||
                other.cvvNumber == cvvNumber) &&
            (identical(other.issuingCountry, issuingCountry) ||
                other.issuingCountry == issuingCountry) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardNumber, cardType, cvvNumber, issuingCountry, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditCardImplCopyWith<_$CreditCardImpl> get copyWith =>
      __$$CreditCardImplCopyWithImpl<_$CreditCardImpl>(this, _$identity);
}

abstract class _CreditCard implements CreditCard {
  const factory _CreditCard(
      {@HiveField(0) required final String cardNumber,
      @HiveField(1) required final String cardType,
      @HiveField(2) required final String cvvNumber,
      @HiveField(3) required final String issuingCountry,
      @HiveField(4) required final bool isValid}) = _$CreditCardImpl;

  @override
  @HiveField(0)
  String get cardNumber;
  @override
  @HiveField(1)
  String get cardType;
  @override
  @HiveField(2)
  String get cvvNumber;
  @override
  @HiveField(3)
  String get issuingCountry;
  @override
  @HiveField(4)
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$CreditCardImplCopyWith<_$CreditCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
