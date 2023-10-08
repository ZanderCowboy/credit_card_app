// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EnterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterEventCopyWith<$Res> {
  factory $EnterEventCopyWith(
          EnterEvent value, $Res Function(EnterEvent) then) =
      _$EnterEventCopyWithImpl<$Res, EnterEvent>;
}

/// @nodoc
class _$EnterEventCopyWithImpl<$Res, $Val extends EnterEvent>
    implements $EnterEventCopyWith<$Res> {
  _$EnterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onValidateImplCopyWith<$Res> {
  factory _$$onValidateImplCopyWith(
          _$onValidateImpl value, $Res Function(_$onValidateImpl) then) =
      __$$onValidateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onValidateImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onValidateImpl>
    implements _$$onValidateImplCopyWith<$Res> {
  __$$onValidateImplCopyWithImpl(
      _$onValidateImpl _value, $Res Function(_$onValidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onValidateImpl(
      null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditCardCopyWith<$Res> get creditCard {
    return $CreditCardCopyWith<$Res>(_value.creditCard, (value) {
      return _then(_value.copyWith(creditCard: value));
    });
  }
}

/// @nodoc

class _$onValidateImpl implements onValidate {
  const _$onValidateImpl(this.creditCard);

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'EnterEvent.onValidate(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onValidateImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onValidateImplCopyWith<_$onValidateImpl> get copyWith =>
      __$$onValidateImplCopyWithImpl<_$onValidateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onValidate(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onValidate?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onValidate != null) {
      return onValidate(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onValidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onValidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onValidate != null) {
      return onValidate(this);
    }
    return orElse();
  }
}

abstract class onValidate implements EnterEvent {
  const factory onValidate(final CreditCard creditCard) = _$onValidateImpl;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onValidateImplCopyWith<_$onValidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onSubmitImplCopyWith<$Res> {
  factory _$$onSubmitImplCopyWith(
          _$onSubmitImpl value, $Res Function(_$onSubmitImpl) then) =
      __$$onSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onSubmitImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onSubmitImpl>
    implements _$$onSubmitImplCopyWith<$Res> {
  __$$onSubmitImplCopyWithImpl(
      _$onSubmitImpl _value, $Res Function(_$onSubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onSubmitImpl implements onSubmit {
  const _$onSubmitImpl();

  @override
  String toString() {
    return 'EnterEvent.onSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class onSubmit implements EnterEvent {
  const factory onSubmit() = _$onSubmitImpl;
}

/// @nodoc
abstract class _$$onCancelImplCopyWith<$Res> {
  factory _$$onCancelImplCopyWith(
          _$onCancelImpl value, $Res Function(_$onCancelImpl) then) =
      __$$onCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onCancelImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onCancelImpl>
    implements _$$onCancelImplCopyWith<$Res> {
  __$$onCancelImplCopyWithImpl(
      _$onCancelImpl _value, $Res Function(_$onCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onCancelImpl implements onCancel {
  const _$onCancelImpl();

  @override
  String toString() {
    return 'EnterEvent.onCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class onCancel implements EnterEvent {
  const factory onCancel() = _$onCancelImpl;
}

/// @nodoc
abstract class _$$onChangedNumberImplCopyWith<$Res> {
  factory _$$onChangedNumberImplCopyWith(_$onChangedNumberImpl value,
          $Res Function(_$onChangedNumberImpl) then) =
      __$$onChangedNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$onChangedNumberImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChangedNumberImpl>
    implements _$$onChangedNumberImplCopyWith<$Res> {
  __$$onChangedNumberImplCopyWithImpl(
      _$onChangedNumberImpl _value, $Res Function(_$onChangedNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$onChangedNumberImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onChangedNumberImpl implements onChangedNumber {
  const _$onChangedNumberImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EnterEvent.onChangedNumber(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onChangedNumberImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onChangedNumberImplCopyWith<_$onChangedNumberImpl> get copyWith =>
      __$$onChangedNumberImplCopyWithImpl<_$onChangedNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onChangedNumber(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onChangedNumber?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedNumber != null) {
      return onChangedNumber(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onChangedNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onChangedNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedNumber != null) {
      return onChangedNumber(this);
    }
    return orElse();
  }
}

abstract class onChangedNumber implements EnterEvent {
  const factory onChangedNumber(final String text) = _$onChangedNumberImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$onChangedNumberImplCopyWith<_$onChangedNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedCardTypeImplCopyWith<$Res> {
  factory _$$onChangedCardTypeImplCopyWith(_$onChangedCardTypeImpl value,
          $Res Function(_$onChangedCardTypeImpl) then) =
      __$$onChangedCardTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$onChangedCardTypeImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChangedCardTypeImpl>
    implements _$$onChangedCardTypeImplCopyWith<$Res> {
  __$$onChangedCardTypeImplCopyWithImpl(_$onChangedCardTypeImpl _value,
      $Res Function(_$onChangedCardTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$onChangedCardTypeImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onChangedCardTypeImpl implements onChangedCardType {
  const _$onChangedCardTypeImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EnterEvent.onChangedCardType(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onChangedCardTypeImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onChangedCardTypeImplCopyWith<_$onChangedCardTypeImpl> get copyWith =>
      __$$onChangedCardTypeImplCopyWithImpl<_$onChangedCardTypeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onChangedCardType(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onChangedCardType?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCardType != null) {
      return onChangedCardType(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onChangedCardType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onChangedCardType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCardType != null) {
      return onChangedCardType(this);
    }
    return orElse();
  }
}

abstract class onChangedCardType implements EnterEvent {
  const factory onChangedCardType(final String text) = _$onChangedCardTypeImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$onChangedCardTypeImplCopyWith<_$onChangedCardTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedCvvImplCopyWith<$Res> {
  factory _$$onChangedCvvImplCopyWith(
          _$onChangedCvvImpl value, $Res Function(_$onChangedCvvImpl) then) =
      __$$onChangedCvvImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$onChangedCvvImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChangedCvvImpl>
    implements _$$onChangedCvvImplCopyWith<$Res> {
  __$$onChangedCvvImplCopyWithImpl(
      _$onChangedCvvImpl _value, $Res Function(_$onChangedCvvImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$onChangedCvvImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onChangedCvvImpl implements onChangedCvv {
  const _$onChangedCvvImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EnterEvent.onChangedCVV(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onChangedCvvImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onChangedCvvImplCopyWith<_$onChangedCvvImpl> get copyWith =>
      __$$onChangedCvvImplCopyWithImpl<_$onChangedCvvImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onChangedCVV(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onChangedCVV?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCVV != null) {
      return onChangedCVV(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onChangedCVV(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onChangedCVV?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCVV != null) {
      return onChangedCVV(this);
    }
    return orElse();
  }
}

abstract class onChangedCvv implements EnterEvent {
  const factory onChangedCvv(final String text) = _$onChangedCvvImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$onChangedCvvImplCopyWith<_$onChangedCvvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedCountryImplCopyWith<$Res> {
  factory _$$onChangedCountryImplCopyWith(_$onChangedCountryImpl value,
          $Res Function(_$onChangedCountryImpl) then) =
      __$$onChangedCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$onChangedCountryImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChangedCountryImpl>
    implements _$$onChangedCountryImplCopyWith<$Res> {
  __$$onChangedCountryImplCopyWithImpl(_$onChangedCountryImpl _value,
      $Res Function(_$onChangedCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$onChangedCountryImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onChangedCountryImpl implements onChangedCountry {
  const _$onChangedCountryImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'EnterEvent.onChangedCountry(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onChangedCountryImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onChangedCountryImplCopyWith<_$onChangedCountryImpl> get copyWith =>
      __$$onChangedCountryImplCopyWithImpl<_$onChangedCountryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onSubmit,
    required TResult Function() onCancel,
    required TResult Function(String text) onChangedNumber,
    required TResult Function(String text) onChangedCardType,
    required TResult Function(String text) onChangedCVV,
    required TResult Function(String text) onChangedCountry,
  }) {
    return onChangedCountry(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onSubmit,
    TResult? Function()? onCancel,
    TResult? Function(String text)? onChangedNumber,
    TResult? Function(String text)? onChangedCardType,
    TResult? Function(String text)? onChangedCVV,
    TResult? Function(String text)? onChangedCountry,
  }) {
    return onChangedCountry?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onSubmit,
    TResult Function()? onCancel,
    TResult Function(String text)? onChangedNumber,
    TResult Function(String text)? onChangedCardType,
    TResult Function(String text)? onChangedCVV,
    TResult Function(String text)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCountry != null) {
      return onChangedCountry(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onChangedNumber value) onChangedNumber,
    required TResult Function(onChangedCardType value) onChangedCardType,
    required TResult Function(onChangedCvv value) onChangedCVV,
    required TResult Function(onChangedCountry value) onChangedCountry,
  }) {
    return onChangedCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onChangedNumber value)? onChangedNumber,
    TResult? Function(onChangedCardType value)? onChangedCardType,
    TResult? Function(onChangedCvv value)? onChangedCVV,
    TResult? Function(onChangedCountry value)? onChangedCountry,
  }) {
    return onChangedCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onChangedNumber value)? onChangedNumber,
    TResult Function(onChangedCardType value)? onChangedCardType,
    TResult Function(onChangedCvv value)? onChangedCVV,
    TResult Function(onChangedCountry value)? onChangedCountry,
    required TResult orElse(),
  }) {
    if (onChangedCountry != null) {
      return onChangedCountry(this);
    }
    return orElse();
  }
}

abstract class onChangedCountry implements EnterEvent {
  const factory onChangedCountry(final String text) = _$onChangedCountryImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$onChangedCountryImplCopyWith<_$onChangedCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EnterState {
  CreditCard get creditCard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get isInvalid => throw _privateConstructorUsedError;
  bool get isDuplicate => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EnterStateCopyWith<EnterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterStateCopyWith<$Res> {
  factory $EnterStateCopyWith(
          EnterState value, $Res Function(EnterState) then) =
      _$EnterStateCopyWithImpl<$Res, EnterState>;
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isSaving,
      bool isValid,
      bool isInvalid,
      bool isDuplicate,
      String? errorMessage});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class _$EnterStateCopyWithImpl<$Res, $Val extends EnterState>
    implements $EnterStateCopyWith<$Res> {
  _$EnterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isValid = null,
    Object? isInvalid = null,
    Object? isDuplicate = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvalid: null == isInvalid
          ? _value.isInvalid
          : isInvalid // ignore: cast_nullable_to_non_nullable
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
  $CreditCardCopyWith<$Res> get creditCard {
    return $CreditCardCopyWith<$Res>(_value.creditCard, (value) {
      return _then(_value.copyWith(creditCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EnterStateImplCopyWith<$Res>
    implements $EnterStateCopyWith<$Res> {
  factory _$$EnterStateImplCopyWith(
          _$EnterStateImpl value, $Res Function(_$EnterStateImpl) then) =
      __$$EnterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isSaving,
      bool isValid,
      bool isInvalid,
      bool isDuplicate,
      String? errorMessage});

  @override
  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$EnterStateImplCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$EnterStateImpl>
    implements _$$EnterStateImplCopyWith<$Res> {
  __$$EnterStateImplCopyWithImpl(
      _$EnterStateImpl _value, $Res Function(_$EnterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isSaving = null,
    Object? isValid = null,
    Object? isInvalid = null,
    Object? isDuplicate = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$EnterStateImpl(
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isInvalid: null == isInvalid
          ? _value.isInvalid
          : isInvalid // ignore: cast_nullable_to_non_nullable
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

class _$EnterStateImpl extends _EnterState {
  const _$EnterStateImpl(
      {required this.creditCard,
      required this.isLoading,
      required this.isSaving,
      required this.isValid,
      required this.isInvalid,
      required this.isDuplicate,
      required this.errorMessage})
      : super._();

  @override
  final CreditCard creditCard;
  @override
  final bool isLoading;
  @override
  final bool isSaving;
  @override
  final bool isValid;
  @override
  final bool isInvalid;
  @override
  final bool isDuplicate;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'EnterState(creditCard: $creditCard, isLoading: $isLoading, isSaving: $isSaving, isValid: $isValid, isInvalid: $isInvalid, isDuplicate: $isDuplicate, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterStateImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isInvalid, isInvalid) ||
                other.isInvalid == isInvalid) &&
            (identical(other.isDuplicate, isDuplicate) ||
                other.isDuplicate == isDuplicate) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard, isLoading, isSaving,
      isValid, isInvalid, isDuplicate, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterStateImplCopyWith<_$EnterStateImpl> get copyWith =>
      __$$EnterStateImplCopyWithImpl<_$EnterStateImpl>(this, _$identity);
}

abstract class _EnterState extends EnterState {
  const factory _EnterState(
      {required final CreditCard creditCard,
      required final bool isLoading,
      required final bool isSaving,
      required final bool isValid,
      required final bool isInvalid,
      required final bool isDuplicate,
      required final String? errorMessage}) = _$EnterStateImpl;
  const _EnterState._() : super._();

  @override
  CreditCard get creditCard;
  @override
  bool get isLoading;
  @override
  bool get isSaving;
  @override
  bool get isValid;
  @override
  bool get isInvalid;
  @override
  bool get isDuplicate;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EnterStateImplCopyWith<_$EnterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
