// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  CreditCard get creditCard => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onCardDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onCardDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onCardDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onCardDelete value) onCardDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onCardDelete value)? onCardDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onCardDelete value)? onCardDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryEventCopyWith<HistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_value.copyWith(
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
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
abstract class _$$onCardDeleteImplCopyWith<$Res>
    implements $HistoryEventCopyWith<$Res> {
  factory _$$onCardDeleteImplCopyWith(
          _$onCardDeleteImpl value, $Res Function(_$onCardDeleteImpl) then) =
      __$$onCardDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreditCard creditCard});

  @override
  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onCardDeleteImplCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$onCardDeleteImpl>
    implements _$$onCardDeleteImplCopyWith<$Res> {
  __$$onCardDeleteImplCopyWithImpl(
      _$onCardDeleteImpl _value, $Res Function(_$onCardDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onCardDeleteImpl(
      null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
    ));
  }
}

/// @nodoc

class _$onCardDeleteImpl implements onCardDelete {
  const _$onCardDeleteImpl(this.creditCard);

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'HistoryEvent.onCardDelete(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onCardDeleteImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onCardDeleteImplCopyWith<_$onCardDeleteImpl> get copyWith =>
      __$$onCardDeleteImplCopyWithImpl<_$onCardDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onCardDelete,
  }) {
    return onCardDelete(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onCardDelete,
  }) {
    return onCardDelete?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onCardDelete,
    required TResult orElse(),
  }) {
    if (onCardDelete != null) {
      return onCardDelete(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onCardDelete value) onCardDelete,
  }) {
    return onCardDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onCardDelete value)? onCardDelete,
  }) {
    return onCardDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onCardDelete value)? onCardDelete,
    required TResult orElse(),
  }) {
    if (onCardDelete != null) {
      return onCardDelete(this);
    }
    return orElse();
  }
}

abstract class onCardDelete implements HistoryEvent {
  const factory onCardDelete(final CreditCard creditCard) = _$onCardDeleteImpl;

  @override
  CreditCard get creditCard;
  @override
  @JsonKey(ignore: true)
  _$$onCardDeleteImplCopyWith<_$onCardDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  CreditCard get creditCard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isDeleted,
      String? errorMessage});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isDeleted = null,
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
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HistoryStateImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateImplCopyWith(
          _$HistoryStateImpl value, $Res Function(_$HistoryStateImpl) then) =
      __$$HistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isDeleted,
      String? errorMessage});

  @override
  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$HistoryStateImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateImpl>
    implements _$$HistoryStateImplCopyWith<$Res> {
  __$$HistoryStateImplCopyWithImpl(
      _$HistoryStateImpl _value, $Res Function(_$HistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isDeleted = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HistoryStateImpl(
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryStateImpl extends _HistoryState {
  const _$HistoryStateImpl(
      {required this.creditCard,
      required this.isLoading,
      required this.isDeleted,
      required this.errorMessage})
      : super._();

  @override
  final CreditCard creditCard;
  @override
  final bool isLoading;
  @override
  final bool isDeleted;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'HistoryState(creditCard: $creditCard, isLoading: $isLoading, isDeleted: $isDeleted, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, creditCard, isLoading, isDeleted, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      __$$HistoryStateImplCopyWithImpl<_$HistoryStateImpl>(this, _$identity);
}

abstract class _HistoryState extends HistoryState {
  const factory _HistoryState(
      {required final CreditCard creditCard,
      required final bool isLoading,
      required final bool isDeleted,
      required final String? errorMessage}) = _$HistoryStateImpl;
  const _HistoryState._() : super._();

  @override
  CreditCard get creditCard;
  @override
  bool get isLoading;
  @override
  bool get isDeleted;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
