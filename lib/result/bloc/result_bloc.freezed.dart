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
abstract class _$$onFinishCopyWith<$Res> {
  factory _$$onFinishCopyWith(
          _$onFinish value, $Res Function(_$onFinish) then) =
      __$$onFinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onFinishCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onFinish>
    implements _$$onFinishCopyWith<$Res> {
  __$$onFinishCopyWithImpl(_$onFinish _value, $Res Function(_$onFinish) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onFinish implements onFinish {
  const _$onFinish();

  @override
  String toString() {
    return 'ResultEvent.onFinish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onFinish);
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
  const factory onFinish() = _$onFinish;
}

/// @nodoc
abstract class _$$onCancelCopyWith<$Res> {
  factory _$$onCancelCopyWith(
          _$onCancel value, $Res Function(_$onCancel) then) =
      __$$onCancelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onCancelCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onCancel>
    implements _$$onCancelCopyWith<$Res> {
  __$$onCancelCopyWithImpl(_$onCancel _value, $Res Function(_$onCancel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onCancel implements onCancel {
  const _$onCancel();

  @override
  String toString() {
    return 'ResultEvent.onCancel()';
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
  const factory onCancel() = _$onCancel;
}

/// @nodoc
mixin _$ResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
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
abstract class _$$_ResultStateCopyWith<$Res> {
  factory _$$_ResultStateCopyWith(
          _$_ResultState value, $Res Function(_$_ResultState) then) =
      __$$_ResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResultStateCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$_ResultState>
    implements _$$_ResultStateCopyWith<$Res> {
  __$$_ResultStateCopyWithImpl(
      _$_ResultState _value, $Res Function(_$_ResultState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResultState extends _ResultState {
  const _$_ResultState() : super._();

  @override
  String toString() {
    return 'ResultState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
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
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ResultState extends ResultState {
  const factory _ResultState() = _$_ResultState;
  const _ResultState._() : super._();
}

/// @nodoc
abstract class _$$ResultInitialCopyWith<$Res> {
  factory _$$ResultInitialCopyWith(
          _$ResultInitial value, $Res Function(_$ResultInitial) then) =
      __$$ResultInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultInitialCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultInitial>
    implements _$$ResultInitialCopyWith<$Res> {
  __$$ResultInitialCopyWithImpl(
      _$ResultInitial _value, $Res Function(_$ResultInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultInitial extends ResultInitial {
  const _$ResultInitial() : super._();

  @override
  String toString() {
    return 'ResultState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
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
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResultInitial extends ResultState {
  const factory ResultInitial() = _$ResultInitial;
  const ResultInitial._() : super._();
}

/// @nodoc
abstract class _$$ResultLoadingCopyWith<$Res> {
  factory _$$ResultLoadingCopyWith(
          _$ResultLoading value, $Res Function(_$ResultLoading) then) =
      __$$ResultLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultLoadingCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultLoading>
    implements _$$ResultLoadingCopyWith<$Res> {
  __$$ResultLoadingCopyWithImpl(
      _$ResultLoading _value, $Res Function(_$ResultLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoading extends ResultLoading {
  const _$ResultLoading() : super._();

  @override
  String toString() {
    return 'ResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultLoading extends ResultState {
  const factory ResultLoading() = _$ResultLoading;
  const ResultLoading._() : super._();
}

/// @nodoc
abstract class _$$ResultLoadedCopyWith<$Res> {
  factory _$$ResultLoadedCopyWith(
          _$ResultLoaded value, $Res Function(_$ResultLoaded) then) =
      __$$ResultLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultLoadedCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultLoaded>
    implements _$$ResultLoadedCopyWith<$Res> {
  __$$ResultLoadedCopyWithImpl(
      _$ResultLoaded _value, $Res Function(_$ResultLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoaded extends ResultLoaded {
  const _$ResultLoaded() : super._();

  @override
  String toString() {
    return 'ResultState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ResultLoaded extends ResultState {
  const factory ResultLoaded() = _$ResultLoaded;
  const ResultLoaded._() : super._();
}

/// @nodoc
abstract class _$$ResultErrorCopyWith<$Res> {
  factory _$$ResultErrorCopyWith(
          _$ResultError value, $Res Function(_$ResultError) then) =
      __$$ResultErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultErrorCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultError>
    implements _$$ResultErrorCopyWith<$Res> {
  __$$ResultErrorCopyWithImpl(
      _$ResultError _value, $Res Function(_$ResultError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultError extends ResultError {
  const _$ResultError() : super._();

  @override
  String toString() {
    return 'ResultState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? valid,
    TResult Function()? duplicate,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError extends ResultState {
  const factory ResultError() = _$ResultError;
  const ResultError._() : super._();
}

/// @nodoc
abstract class _$$ResultValidCopyWith<$Res> {
  factory _$$ResultValidCopyWith(
          _$ResultValid value, $Res Function(_$ResultValid) then) =
      __$$ResultValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultValidCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultValid>
    implements _$$ResultValidCopyWith<$Res> {
  __$$ResultValidCopyWithImpl(
      _$ResultValid _value, $Res Function(_$ResultValid) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultValid extends ResultValid {
  const _$ResultValid() : super._();

  @override
  String toString() {
    return 'ResultState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultValid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class ResultValid extends ResultState {
  const factory ResultValid() = _$ResultValid;
  const ResultValid._() : super._();
}

/// @nodoc
abstract class _$$ResultDuplicateCopyWith<$Res> {
  factory _$$ResultDuplicateCopyWith(
          _$ResultDuplicate value, $Res Function(_$ResultDuplicate) then) =
      __$$ResultDuplicateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultDuplicateCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultDuplicate>
    implements _$$ResultDuplicateCopyWith<$Res> {
  __$$ResultDuplicateCopyWithImpl(
      _$ResultDuplicate _value, $Res Function(_$ResultDuplicate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultDuplicate extends ResultDuplicate {
  const _$ResultDuplicate() : super._();

  @override
  String toString() {
    return 'ResultState.duplicate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultDuplicate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() valid,
    required TResult Function() duplicate,
  }) {
    return duplicate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? valid,
    TResult? Function()? duplicate,
  }) {
    return duplicate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    TResult Function(_ResultState value) $default, {
    required TResult Function(ResultInitial value) initial,
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
    required TResult Function(ResultError value) error,
    required TResult Function(ResultValid value) valid,
    required TResult Function(ResultDuplicate value) duplicate,
  }) {
    return duplicate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResultState value)? $default, {
    TResult? Function(ResultInitial value)? initial,
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
    TResult? Function(ResultError value)? error,
    TResult? Function(ResultValid value)? valid,
    TResult? Function(ResultDuplicate value)? duplicate,
  }) {
    return duplicate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResultState value)? $default, {
    TResult Function(ResultInitial value)? initial,
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    TResult Function(ResultError value)? error,
    TResult Function(ResultValid value)? valid,
    TResult Function(ResultDuplicate value)? duplicate,
    required TResult orElse(),
  }) {
    if (duplicate != null) {
      return duplicate(this);
    }
    return orElse();
  }
}

abstract class ResultDuplicate extends ResultState {
  const factory ResultDuplicate() = _$ResultDuplicate;
  const ResultDuplicate._() : super._();
}
