// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function() onTake,
    required TResult Function() onRetake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanEventCopyWith<$Res> {
  factory $ScanEventCopyWith(ScanEvent value, $Res Function(ScanEvent) then) =
      _$ScanEventCopyWithImpl<$Res, ScanEvent>;
}

/// @nodoc
class _$ScanEventCopyWithImpl<$Res, $Val extends ScanEvent>
    implements $ScanEventCopyWith<$Res> {
  _$ScanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$onSubmitImplCopyWith<$Res> {
  factory _$$onSubmitImplCopyWith(
          _$onSubmitImpl value, $Res Function(_$onSubmitImpl) then) =
      __$$onSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onSubmitImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onSubmitImpl>
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
    return 'ScanEvent.onSubmit()';
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
    required TResult Function() onSubmit,
    required TResult Function() onTake,
    required TResult Function() onRetake,
  }) {
    return onSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
  }) {
    return onSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function()? onTake,
    TResult Function()? onRetake,
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
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
  }) {
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
  }) {
    return onSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    required TResult orElse(),
  }) {
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class onSubmit implements ScanEvent {
  const factory onSubmit() = _$onSubmitImpl;
}

/// @nodoc
abstract class _$$onTakeImplCopyWith<$Res> {
  factory _$$onTakeImplCopyWith(
          _$onTakeImpl value, $Res Function(_$onTakeImpl) then) =
      __$$onTakeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onTakeImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onTakeImpl>
    implements _$$onTakeImplCopyWith<$Res> {
  __$$onTakeImplCopyWithImpl(
      _$onTakeImpl _value, $Res Function(_$onTakeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onTakeImpl implements onTake {
  const _$onTakeImpl();

  @override
  String toString() {
    return 'ScanEvent.onTake()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onTakeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function() onTake,
    required TResult Function() onRetake,
  }) {
    return onTake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
  }) {
    return onTake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    required TResult orElse(),
  }) {
    if (onTake != null) {
      return onTake();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
  }) {
    return onTake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
  }) {
    return onTake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    required TResult orElse(),
  }) {
    if (onTake != null) {
      return onTake(this);
    }
    return orElse();
  }
}

abstract class onTake implements ScanEvent {
  const factory onTake() = _$onTakeImpl;
}

/// @nodoc
abstract class _$$onRetakeImplCopyWith<$Res> {
  factory _$$onRetakeImplCopyWith(
          _$onRetakeImpl value, $Res Function(_$onRetakeImpl) then) =
      __$$onRetakeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onRetakeImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onRetakeImpl>
    implements _$$onRetakeImplCopyWith<$Res> {
  __$$onRetakeImplCopyWithImpl(
      _$onRetakeImpl _value, $Res Function(_$onRetakeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onRetakeImpl implements onRetake {
  const _$onRetakeImpl();

  @override
  String toString() {
    return 'ScanEvent.onRetake()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onRetakeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSubmit,
    required TResult Function() onTake,
    required TResult Function() onRetake,
  }) {
    return onRetake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSubmit,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
  }) {
    return onRetake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSubmit,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    required TResult orElse(),
  }) {
    if (onRetake != null) {
      return onRetake();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSubmit value) onSubmit,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
  }) {
    return onRetake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmit value)? onSubmit,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
  }) {
    return onRetake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmit value)? onSubmit,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    required TResult orElse(),
  }) {
    if (onRetake != null) {
      return onRetake(this);
    }
    return orElse();
  }
}

abstract class onRetake implements ScanEvent {
  const factory onRetake() = _$onRetakeImpl;
}

/// @nodoc
mixin _$ScanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
    required TResult Function() camera,
    required TResult Function() result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? camera,
    TResult? Function()? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? camera,
    TResult Function()? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ScanStateImplCopyWith<$Res> {
  factory _$$ScanStateImplCopyWith(
          _$ScanStateImpl value, $Res Function(_$ScanStateImpl) then) =
      __$$ScanStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScanStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanStateImpl>
    implements _$$ScanStateImplCopyWith<$Res> {
  __$$ScanStateImplCopyWithImpl(
      _$ScanStateImpl _value, $Res Function(_$ScanStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScanStateImpl extends _ScanState {
  const _$ScanStateImpl() : super._();

  @override
  String toString() {
    return 'ScanState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScanStateImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
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
    TResult? Function()? camera,
    TResult? Function()? result,
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
    TResult Function()? camera,
    TResult Function()? result,
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
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ScanState extends ScanState {
  const factory _ScanState() = _$ScanStateImpl;
  const _ScanState._() : super._();
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'ScanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
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
    TResult? Function()? camera,
    TResult? Function()? result,
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
    TResult Function()? camera,
    TResult Function()? result,
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
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial extends ScanState {
  const factory Initial() = _$InitialImpl;
  const Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'ScanState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
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
    TResult? Function()? camera,
    TResult? Function()? result,
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
    TResult Function()? camera,
    TResult Function()? result,
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
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading extends ScanState {
  const factory Loading() = _$LoadingImpl;
  const Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl extends Loaded {
  const _$LoadedImpl() : super._();

  @override
  String toString() {
    return 'ScanState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
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
    TResult? Function()? camera,
    TResult? Function()? result,
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
    TResult Function()? camera,
    TResult Function()? result,
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
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded extends ScanState {
  const factory Loaded() = _$LoadedImpl;
  const Loaded._() : super._();
}

/// @nodoc
abstract class _$$ErrorSImplCopyWith<$Res> {
  factory _$$ErrorSImplCopyWith(
          _$ErrorSImpl value, $Res Function(_$ErrorSImpl) then) =
      __$$ErrorSImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorSImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ErrorSImpl>
    implements _$$ErrorSImplCopyWith<$Res> {
  __$$ErrorSImplCopyWithImpl(
      _$ErrorSImpl _value, $Res Function(_$ErrorSImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorSImpl extends ErrorS {
  const _$ErrorSImpl() : super._();

  @override
  String toString() {
    return 'ScanState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorSImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
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
    TResult? Function()? camera,
    TResult? Function()? result,
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
    TResult Function()? camera,
    TResult Function()? result,
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
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorS extends ScanState {
  const factory ErrorS() = _$ErrorSImpl;
  const ErrorS._() : super._();
}

/// @nodoc
abstract class _$$CameraImplCopyWith<$Res> {
  factory _$$CameraImplCopyWith(
          _$CameraImpl value, $Res Function(_$CameraImpl) then) =
      __$$CameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$CameraImpl>
    implements _$$CameraImplCopyWith<$Res> {
  __$$CameraImplCopyWithImpl(
      _$CameraImpl _value, $Res Function(_$CameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraImpl extends Camera {
  const _$CameraImpl() : super._();

  @override
  String toString() {
    return 'ScanState.camera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
  }) {
    return camera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? camera,
    TResult? Function()? result,
  }) {
    return camera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? camera,
    TResult Function()? result,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return camera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return camera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera(this);
    }
    return orElse();
  }
}

abstract class Camera extends ScanState {
  const factory Camera() = _$CameraImpl;
  const Camera._() : super._();
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultImpl extends Result {
  const _$ResultImpl() : super._();

  @override
  String toString() {
    return 'ScanState.result()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultImpl);
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
    required TResult Function() camera,
    required TResult Function() result,
  }) {
    return result();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
    TResult? Function()? camera,
    TResult? Function()? result,
  }) {
    return result?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    TResult Function()? camera,
    TResult Function()? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScanState value) $default, {
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(ErrorS value) error,
    required TResult Function(Camera value) camera,
    required TResult Function(Result value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ScanState value)? $default, {
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(ErrorS value)? error,
    TResult? Function(Camera value)? camera,
    TResult? Function(Result value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ScanState value)? $default, {
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(ErrorS value)? error,
    TResult Function(Camera value)? camera,
    TResult Function(Result value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class Result extends ScanState {
  const factory Result() = _$ResultImpl;
  const Result._() : super._();
}
