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
  const factory onValidate(final CreditCard creditCard) = _$onValidateImpl;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onValidateImplCopyWith<_$onValidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  const factory onCancel() = _$onCancelImpl;
}

/// @nodoc
abstract class _$$onSubmitImplCopyWith<$Res> {
  factory _$$onSubmitImplCopyWith(
          _$onSubmitImpl value, $Res Function(_$onSubmitImpl) then) =
      __$$onSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onSubmitImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onSubmitImpl>
    implements _$$onSubmitImplCopyWith<$Res> {
  __$$onSubmitImplCopyWithImpl(
      _$onSubmitImpl _value, $Res Function(_$onSubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onSubmitImpl(
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

class _$onSubmitImpl implements onSubmit {
  const _$onSubmitImpl(this.creditCard);

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
            other is _$onSubmitImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSubmitImplCopyWith<_$onSubmitImpl> get copyWith =>
      __$$onSubmitImplCopyWithImpl<_$onSubmitImpl>(this, _$identity);

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
  const factory onSubmit(final CreditCard creditCard) = _$onSubmitImpl;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onSubmitImplCopyWith<_$onSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onChangedImplCopyWith<$Res> {
  factory _$$onChangedImplCopyWith(
          _$onChangedImpl value, $Res Function(_$onChangedImpl) then) =
      __$$onChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onChangedImplCopyWithImpl<$Res>
    extends _$EnterEventCopyWithImpl<$Res, _$onChangedImpl>
    implements _$$onChangedImplCopyWith<$Res> {
  __$$onChangedImplCopyWithImpl(
      _$onChangedImpl _value, $Res Function(_$onChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onChangedImpl implements onChanged {
  const _$onChangedImpl();

  @override
  String toString() {
    return 'EnterEvent.onChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onChangedImpl);
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
  const factory onChanged() = _$onChangedImpl;
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
abstract class _$$EnterStateImplCopyWith<$Res> {
  factory _$$EnterStateImplCopyWith(
          _$EnterStateImpl value, $Res Function(_$EnterStateImpl) then) =
      __$$EnterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

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
  }) {
    return _then(_$EnterStateImpl(
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

class _$EnterStateImpl extends _EnterState {
  const _$EnterStateImpl({required this.creditCard}) : super._();

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
            other is _$EnterStateImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterStateImplCopyWith<_$EnterStateImpl> get copyWith =>
      __$$EnterStateImplCopyWithImpl<_$EnterStateImpl>(this, _$identity);

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
      _$EnterStateImpl;
  const _EnterState._() : super._();

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$EnterStateImplCopyWith<_$EnterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EnterValidImplCopyWith<$Res> {
  factory _$$EnterValidImplCopyWith(
          _$EnterValidImpl value, $Res Function(_$EnterValidImpl) then) =
      __$$EnterValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterValidImplCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$EnterValidImpl>
    implements _$$EnterValidImplCopyWith<$Res> {
  __$$EnterValidImplCopyWithImpl(
      _$EnterValidImpl _value, $Res Function(_$EnterValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterValidImpl extends EnterValid {
  const _$EnterValidImpl() : super._();

  @override
  String toString() {
    return 'EnterState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterValidImpl);
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
  const factory EnterValid() = _$EnterValidImpl;
  const EnterValid._() : super._();
}

/// @nodoc
abstract class _$$EnterDuplicateImplCopyWith<$Res> {
  factory _$$EnterDuplicateImplCopyWith(_$EnterDuplicateImpl value,
          $Res Function(_$EnterDuplicateImpl) then) =
      __$$EnterDuplicateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterDuplicateImplCopyWithImpl<$Res>
    extends _$EnterStateCopyWithImpl<$Res, _$EnterDuplicateImpl>
    implements _$$EnterDuplicateImplCopyWith<$Res> {
  __$$EnterDuplicateImplCopyWithImpl(
      _$EnterDuplicateImpl _value, $Res Function(_$EnterDuplicateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterDuplicateImpl extends EnterDuplicate {
  const _$EnterDuplicateImpl() : super._();

  @override
  String toString() {
    return 'EnterState.duplicate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterDuplicateImpl);
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
  const factory EnterDuplicate() = _$EnterDuplicateImpl;
  const EnterDuplicate._() : super._();
}
