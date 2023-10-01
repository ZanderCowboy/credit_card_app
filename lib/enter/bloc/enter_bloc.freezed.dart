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
    required TResult Function() onCancel,
    required TResult Function(CreditCard creditCard) onSubmit,
    required TResult Function() onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onCancel,
    TResult? Function(CreditCard creditCard)? onSubmit,
    TResult? Function()? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onCancel,
    TResult Function(CreditCard creditCard)? onSubmit,
    TResult Function()? onChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onChanged value) onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onChanged value)? onChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onChanged value)? onChanged,
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
abstract class _$$onValidateCopyWith<$Res> {
  factory _$$onValidateCopyWith(
          _$onValidate value, $Res Function(_$onValidate) then) =
      __$$onValidateCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onValidateCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onValidate>
    implements _$$onValidateCopyWith<$Res> {
  __$$onValidateCopyWithImpl(
      _$onValidate _value, $Res Function(_$onValidate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onValidate(
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

class _$onValidate implements onValidate {
  const _$onValidate(this.creditCard);

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
            other is _$onValidate &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onValidateCopyWith<_$onValidate> get copyWith =>
      __$$onValidateCopyWithImpl<_$onValidate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onCancel,
    required TResult Function(CreditCard creditCard) onSubmit,
    required TResult Function() onChanged,
  }) {
    return onValidate(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onCancel,
    TResult? Function(CreditCard creditCard)? onSubmit,
    TResult? Function()? onChanged,
  }) {
    return onValidate?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onCancel,
    TResult Function(CreditCard creditCard)? onSubmit,
    TResult Function()? onChanged,
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
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onChanged value) onChanged,
  }) {
    return onValidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onChanged value)? onChanged,
  }) {
    return onValidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onValidate != null) {
      return onValidate(this);
    }
    return orElse();
  }
}

abstract class onValidate implements EnterEvent {
  const factory onValidate(final CreditCard creditCard) = _$onValidate;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onValidateCopyWith<_$onValidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onCancelCopyWith<$Res> {
  factory _$$onCancelCopyWith(
          _$onCancel value, $Res Function(_$onCancel) then) =
      __$$onCancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onCancelCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onCancel>
    implements _$$onCancelCopyWith<$Res> {
  __$$onCancelCopyWithImpl(_$onCancel _value, $Res Function(_$onCancel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onCancel implements onCancel {
  const _$onCancel();

  @override
  String toString() {
    return 'EnterEvent.onCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onCancel,
    required TResult Function(CreditCard creditCard) onSubmit,
    required TResult Function() onChanged,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onCancel,
    TResult? Function(CreditCard creditCard)? onSubmit,
    TResult? Function()? onChanged,
  }) {
    return onCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onCancel,
    TResult Function(CreditCard creditCard)? onSubmit,
    TResult Function()? onChanged,
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
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onChanged value) onChanged,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onChanged value)? onChanged,
  }) {
    return onCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class onCancel implements EnterEvent {
  const factory onCancel() = _$onCancel;
}

/// @nodoc
abstract class _$$onSubmitCopyWith<$Res> {
  factory _$$onSubmitCopyWith(
          _$onSubmit value, $Res Function(_$onSubmit) then) =
      __$$onSubmitCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onSubmitCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onSubmit>
    implements _$$onSubmitCopyWith<$Res> {
  __$$onSubmitCopyWithImpl(_$onSubmit _value, $Res Function(_$onSubmit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onSubmit(
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

class _$onSubmit implements onSubmit {
  const _$onSubmit(this.creditCard);

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'EnterEvent.onSubmit(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSubmit &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSubmitCopyWith<_$onSubmit> get copyWith =>
      __$$onSubmitCopyWithImpl<_$onSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onCancel,
    required TResult Function(CreditCard creditCard) onSubmit,
    required TResult Function() onChanged,
  }) {
    return onSubmit(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onCancel,
    TResult? Function(CreditCard creditCard)? onSubmit,
    TResult? Function()? onChanged,
  }) {
    return onSubmit?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onCancel,
    TResult Function(CreditCard creditCard)? onSubmit,
    TResult Function()? onChanged,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onChanged value) onChanged,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onChanged value)? onChanged,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class onSubmit implements EnterEvent {
  const factory onSubmit(final CreditCard creditCard) = _$onSubmit;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onSubmitCopyWith<_$onSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedCopyWith<$Res> {
  factory _$$onChangedCopyWith(
          _$onChanged value, $Res Function(_$onChanged) then) =
      __$$onChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onChangedCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChanged>
    implements _$$onChangedCopyWith<$Res> {
  __$$onChangedCopyWithImpl(
      _$onChanged _value, $Res Function(_$onChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onChanged implements onChanged {
  const _$onChanged();

  @override
  String toString() {
    return 'EnterEvent.onChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onValidate,
    required TResult Function() onCancel,
    required TResult Function(CreditCard creditCard) onSubmit,
    required TResult Function() onChanged,
  }) {
    return onChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onValidate,
    TResult? Function()? onCancel,
    TResult? Function(CreditCard creditCard)? onSubmit,
    TResult? Function()? onChanged,
  }) {
    return onChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onValidate,
    TResult Function()? onCancel,
    TResult Function(CreditCard creditCard)? onSubmit,
    TResult Function()? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onValidate value) onValidate,
    required TResult Function(onCancel value) onCancel,
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onChanged value) onChanged,
  }) {
    return onChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onValidate value)? onValidate,
    TResult? Function(onCancel value)? onCancel,
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onChanged value)? onChanged,
  }) {
    return onChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onValidate value)? onValidate,
    TResult Function(onCancel value)? onCancel,
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onChanged value)? onChanged,
    required TResult orElse(),
  }) {
    if (onChanged != null) {
      return onChanged(this);
    }
    return orElse();
  }
}

abstract class onChanged implements EnterEvent {
  const factory onChanged() = _$onChanged;
}

/// @nodoc
mixin _$EnterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CreditCard creditCard) $default, {
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CreditCard creditCard)? $default, {
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CreditCard creditCard)? $default, {
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EnterState value) $default, {
    required TResult Function(EnterValid value) valid,
    required TResult Function(EnterDuplicate value) duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EnterState value)? $default, {
    TResult? Function(EnterValid value)? valid,
    TResult? Function(EnterDuplicate value)? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EnterState value)? $default, {
    TResult Function(EnterValid value)? valid,
    TResult Function(EnterDuplicate value)? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterStateCopyWith<$Res> {
  factory $EnterStateCopyWith(
          EnterState value, $Res Function(EnterState) then) =
      _$EnterStateCopyWithImpl<$Res, EnterState>;
}

/// @nodoc
class _$EnterStateCopyWithImpl<$Res, $Val extends EnterState>
    implements $EnterStateCopyWith<$Res> {
  _$EnterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EnterStateCopyWith<$Res> {
  factory _$$_EnterStateCopyWith(
          _$_EnterState value, $Res Function(_$_EnterState) then) =
      __$$_EnterStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$_EnterStateCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$_EnterState>
    implements _$$_EnterStateCopyWith<$Res> {
  __$$_EnterStateCopyWithImpl(
      _$_EnterState _value, $Res Function(_$_EnterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$_EnterState(
      creditCard: null == creditCard
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

class _$_EnterState extends _EnterState {
  const _$_EnterState({required this.creditCard}) : super._();

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'EnterState(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EnterState &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterStateCopyWith<_$_EnterState> get copyWith =>
      __$$_EnterStateCopyWithImpl<_$_EnterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CreditCard creditCard) $default, {
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return $default(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CreditCard creditCard)? $default, {
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return $default?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CreditCard creditCard)? $default, {
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EnterState value) $default, {
    required TResult Function(EnterValid value) valid,
    required TResult Function(EnterDuplicate value) duplicate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EnterState value)? $default, {
    TResult? Function(EnterValid value)? valid,
    TResult? Function(EnterDuplicate value)? duplicate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EnterState value)? $default, {
    TResult Function(EnterValid value)? valid,
    TResult Function(EnterDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _EnterState extends EnterState {
  const factory _EnterState({required final CreditCard creditCard}) =
      _$_EnterState;
  const _EnterState._() : super._();

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$_EnterStateCopyWith<_$_EnterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterValidCopyWith<$Res> {
  factory _$$EnterValidCopyWith(
          _$EnterValid value, $Res Function(_$EnterValid) then) =
      __$$EnterValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterValidCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$EnterValid>
    implements _$$EnterValidCopyWith<$Res> {
  __$$EnterValidCopyWithImpl(
      _$EnterValid _value, $Res Function(_$EnterValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterValid extends EnterValid {
  const _$EnterValid() : super._();

  @override
  String toString() {
    return 'EnterState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CreditCard creditCard) $default, {
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CreditCard creditCard)? $default, {
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CreditCard creditCard)? $default, {
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_EnterState value) $default, {
    required TResult Function(EnterValid value) valid,
    required TResult Function(EnterDuplicate value) duplicate,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EnterState value)? $default, {
    TResult? Function(EnterValid value)? valid,
    TResult? Function(EnterDuplicate value)? duplicate,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EnterState value)? $default, {
    TResult Function(EnterValid value)? valid,
    TResult Function(EnterDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class EnterValid extends EnterState {
  const factory EnterValid() = _$EnterValid;
  const EnterValid._() : super._();
}

/// @nodoc
abstract class _$$EnterDuplicateCopyWith<$Res> {
  factory _$$EnterDuplicateCopyWith(
          _$EnterDuplicate value, $Res Function(_$EnterDuplicate) then) =
      __$$EnterDuplicateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterDuplicateCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$EnterDuplicate>
    implements _$$EnterDuplicateCopyWith<$Res> {
  __$$EnterDuplicateCopyWithImpl(
      _$EnterDuplicate _value, $Res Function(_$EnterDuplicate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterDuplicate extends EnterDuplicate {
  const _$EnterDuplicate() : super._();

  @override
  String toString() {
    return 'EnterState.duplicate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterDuplicate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CreditCard creditCard) $default, {
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return duplicate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CreditCard creditCard)? $default, {
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return duplicate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CreditCard creditCard)? $default, {
    TResult Function()? valid,
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
    TResult Function(_EnterState value) $default, {
    required TResult Function(EnterValid value) valid,
    required TResult Function(EnterDuplicate value) duplicate,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_EnterState value)? $default, {
    TResult? Function(EnterValid value)? valid,
    TResult? Function(EnterDuplicate value)? duplicate,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_EnterState value)? $default, {
    TResult Function(EnterValid value)? valid,
    TResult Function(EnterDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class EnterDuplicate extends EnterState {
  const factory EnterDuplicate() = _$EnterDuplicate;
  const EnterDuplicate._() : super._();
}
