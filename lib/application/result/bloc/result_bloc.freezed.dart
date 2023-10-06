// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinish,
    required TResult Function() onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinish,
    TResult? Function()? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinish,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFinish value) onFinish,
    required TResult Function(onCancel value) onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFinish value)? onFinish,
    TResult? Function(onCancel value)? onCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFinish value)? onFinish,
    TResult Function(onCancel value)? onCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultEventCopyWith<$Res> {
  factory $ResultEventCopyWith(
          ResultEvent value, $Res Function(ResultEvent) then) =
      _$ResultEventCopyWithImpl<$Res, ResultEvent>;
}

/// @nodoc
class _$ResultEventCopyWithImpl<$Res, $Val extends ResultEvent>
    implements $ResultEventCopyWith<$Res> {
  _$ResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onFinishImplCopyWith<$Res> {
  factory _$$onFinishImplCopyWith(
          _$onFinishImpl value, $Res Function(_$onFinishImpl) then) =
      __$$onFinishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onFinishImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onFinishImpl>
    implements _$$onFinishImplCopyWith<$Res> {
  __$$onFinishImplCopyWithImpl(
      _$onFinishImpl _value, $Res Function(_$onFinishImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onFinishImpl implements onFinish {
  const _$onFinishImpl();

  @override
  String toString() {
    return 'ResultEvent.onFinish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onFinishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFinish,
    required TResult Function() onCancel,
  }) {
    return onFinish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinish,
    TResult? Function()? onCancel,
  }) {
    return onFinish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinish,
    TResult Function()? onCancel,
    required TResult orElse(),
  }) {
    if (onFinish != null) {
      return onFinish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFinish value) onFinish,
    required TResult Function(onCancel value) onCancel,
  }) {
    return onFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFinish value)? onFinish,
    TResult? Function(onCancel value)? onCancel,
  }) {
    return onFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFinish value)? onFinish,
    TResult Function(onCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onFinish != null) {
      return onFinish(this);
    }
    return orElse();
  }
}

abstract class onFinish implements ResultEvent {
  const factory onFinish() = _$onFinishImpl;
}

/// @nodoc
abstract class _$$onCancelImplCopyWith<$Res> {
  factory _$$onCancelImplCopyWith(
          _$onCancelImpl value, $Res Function(_$onCancelImpl) then) =
      __$$onCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onCancelImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onCancelImpl>
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
    return 'ResultEvent.onCancel()';
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
    required TResult Function() onFinish,
    required TResult Function() onCancel,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFinish,
    TResult? Function()? onCancel,
  }) {
    return onCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFinish,
    TResult Function()? onCancel,
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
    required TResult Function(onFinish value) onFinish,
    required TResult Function(onCancel value) onCancel,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onFinish value)? onFinish,
    TResult? Function(onCancel value)? onCancel,
  }) {
    return onCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFinish value)? onFinish,
    TResult Function(onCancel value)? onCancel,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class onCancel implements ResultEvent {
  const factory onCancel() = _$onCancelImpl;
}

/// @nodoc
mixin _$ResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultStateImplCopyWith<$Res> {
  factory _$$ResultStateImplCopyWith(
          _$ResultStateImpl value, $Res Function(_$ResultStateImpl) then) =
      __$$ResultStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultStateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultStateImpl>
    implements _$$ResultStateImplCopyWith<$Res> {
  __$$ResultStateImplCopyWithImpl(
      _$ResultStateImpl _value, $Res Function(_$ResultStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultStateImpl extends _ResultState {
  const _$ResultStateImpl() : super._();

  @override
  String toString() {
    return 'ResultState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ResultState extends ResultState {
  const factory _ResultState() = _$ResultStateImpl;
  const _ResultState._() : super._();
}

/// @nodoc
abstract class _$$ResultInitialImplCopyWith<$Res> {
  factory _$$ResultInitialImplCopyWith(
          _$ResultInitialImpl value, $Res Function(_$ResultInitialImpl) then) =
      __$$ResultInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultInitialImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultInitialImpl>
    implements _$$ResultInitialImplCopyWith<$Res> {
  __$$ResultInitialImplCopyWithImpl(
      _$ResultInitialImpl _value, $Res Function(_$ResultInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultInitialImpl extends ResultInitial {
  const _$ResultInitialImpl() : super._();

  @override
  String toString() {
    return 'ResultState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResultInitial extends ResultState {
  const factory ResultInitial() = _$ResultInitialImpl;
  const ResultInitial._() : super._();
}
