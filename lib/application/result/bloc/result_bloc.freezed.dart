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
  const factory ResultInitial() = _$ResultInitialImpl;
  const ResultInitial._() : super._();
}

/// @nodoc
abstract class _$$ResultLoadingImplCopyWith<$Res> {
  factory _$$ResultLoadingImplCopyWith(
          _$ResultLoadingImpl value, $Res Function(_$ResultLoadingImpl) then) =
      __$$ResultLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultLoadingImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultLoadingImpl>
    implements _$$ResultLoadingImplCopyWith<$Res> {
  __$$ResultLoadingImplCopyWithImpl(
      _$ResultLoadingImpl _value, $Res Function(_$ResultLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoadingImpl extends ResultLoading {
  const _$ResultLoadingImpl() : super._();

  @override
  String toString() {
    return 'ResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoadingImpl);
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
  const factory ResultLoading() = _$ResultLoadingImpl;
  const ResultLoading._() : super._();
}

/// @nodoc
abstract class _$$ResultLoadedImplCopyWith<$Res> {
  factory _$$ResultLoadedImplCopyWith(
          _$ResultLoadedImpl value, $Res Function(_$ResultLoadedImpl) then) =
      __$$ResultLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultLoadedImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultLoadedImpl>
    implements _$$ResultLoadedImplCopyWith<$Res> {
  __$$ResultLoadedImplCopyWithImpl(
      _$ResultLoadedImpl _value, $Res Function(_$ResultLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoadedImpl extends ResultLoaded {
  const _$ResultLoadedImpl() : super._();

  @override
  String toString() {
    return 'ResultState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoadedImpl);
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
  const factory ResultLoaded() = _$ResultLoadedImpl;
  const ResultLoaded._() : super._();
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<$Res> {
  factory _$$ResultErrorImplCopyWith(
          _$ResultErrorImpl value, $Res Function(_$ResultErrorImpl) then) =
      __$$ResultErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultErrorImpl>
    implements _$$ResultErrorImplCopyWith<$Res> {
  __$$ResultErrorImplCopyWithImpl(
      _$ResultErrorImpl _value, $Res Function(_$ResultErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultErrorImpl extends ResultError {
  const _$ResultErrorImpl() : super._();

  @override
  String toString() {
    return 'ResultState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultErrorImpl);
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
  const factory ResultError() = _$ResultErrorImpl;
  const ResultError._() : super._();
}

/// @nodoc
abstract class _$$ResultValidImplCopyWith<$Res> {
  factory _$$ResultValidImplCopyWith(
          _$ResultValidImpl value, $Res Function(_$ResultValidImpl) then) =
      __$$ResultValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultValidImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultValidImpl>
    implements _$$ResultValidImplCopyWith<$Res> {
  __$$ResultValidImplCopyWithImpl(
      _$ResultValidImpl _value, $Res Function(_$ResultValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultValidImpl extends ResultValid {
  const _$ResultValidImpl() : super._();

  @override
  String toString() {
    return 'ResultState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultValidImpl);
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
  const factory ResultValid() = _$ResultValidImpl;
  const ResultValid._() : super._();
}

/// @nodoc
abstract class _$$ResultDuplicateImplCopyWith<$Res> {
  factory _$$ResultDuplicateImplCopyWith(_$ResultDuplicateImpl value,
          $Res Function(_$ResultDuplicateImpl) then) =
      __$$ResultDuplicateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultDuplicateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultDuplicateImpl>
    implements _$$ResultDuplicateImplCopyWith<$Res> {
  __$$ResultDuplicateImplCopyWithImpl(
      _$ResultDuplicateImpl _value, $Res Function(_$ResultDuplicateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultDuplicateImpl extends ResultDuplicate {
  const _$ResultDuplicateImpl() : super._();

  @override
  String toString() {
    return 'ResultState.duplicate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultDuplicateImpl);
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
  const factory ResultDuplicate() = _$ResultDuplicateImpl;
  const ResultDuplicate._() : super._();
}
