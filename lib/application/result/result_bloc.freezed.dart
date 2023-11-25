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
    required TResult Function() onPressedValidate,
    required TResult Function() onPressedSubmit,
    required TResult Function() onPressedCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPressedValidate,
    TResult? Function()? onPressedSubmit,
    TResult? Function()? onPressedCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPressedValidate,
    TResult Function()? onPressedSubmit,
    TResult Function()? onPressedCancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedValidate value) onPressedValidate,
    required TResult Function(onPressedSubmit value) onPressedSubmit,
    required TResult Function(onPressedCancel value) onPressedCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedValidate value)? onPressedValidate,
    TResult? Function(onPressedSubmit value)? onPressedSubmit,
    TResult? Function(onPressedCancel value)? onPressedCancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedValidate value)? onPressedValidate,
    TResult Function(onPressedSubmit value)? onPressedSubmit,
    TResult Function(onPressedCancel value)? onPressedCancel,
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
abstract class _$$onPressedValidateImplCopyWith<$Res> {
  factory _$$onPressedValidateImplCopyWith(_$onPressedValidateImpl value,
          $Res Function(_$onPressedValidateImpl) then) =
      __$$onPressedValidateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onPressedValidateImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onPressedValidateImpl>
    implements _$$onPressedValidateImplCopyWith<$Res> {
  __$$onPressedValidateImplCopyWithImpl(_$onPressedValidateImpl _value,
      $Res Function(_$onPressedValidateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onPressedValidateImpl implements onPressedValidate {
  const _$onPressedValidateImpl();

  @override
  String toString() {
    return 'ResultEvent.onPressedValidate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onPressedValidateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPressedValidate,
    required TResult Function() onPressedSubmit,
    required TResult Function() onPressedCancel,
  }) {
    return onPressedValidate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPressedValidate,
    TResult? Function()? onPressedSubmit,
    TResult? Function()? onPressedCancel,
  }) {
    return onPressedValidate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPressedValidate,
    TResult Function()? onPressedSubmit,
    TResult Function()? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedValidate != null) {
      return onPressedValidate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedValidate value) onPressedValidate,
    required TResult Function(onPressedSubmit value) onPressedSubmit,
    required TResult Function(onPressedCancel value) onPressedCancel,
  }) {
    return onPressedValidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedValidate value)? onPressedValidate,
    TResult? Function(onPressedSubmit value)? onPressedSubmit,
    TResult? Function(onPressedCancel value)? onPressedCancel,
  }) {
    return onPressedValidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedValidate value)? onPressedValidate,
    TResult Function(onPressedSubmit value)? onPressedSubmit,
    TResult Function(onPressedCancel value)? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedValidate != null) {
      return onPressedValidate(this);
    }
    return orElse();
  }
}

abstract class onPressedValidate implements ResultEvent {
  const factory onPressedValidate() = _$onPressedValidateImpl;
}

/// @nodoc
abstract class _$$onPressedSubmitImplCopyWith<$Res> {
  factory _$$onPressedSubmitImplCopyWith(_$onPressedSubmitImpl value,
          $Res Function(_$onPressedSubmitImpl) then) =
      __$$onPressedSubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onPressedSubmitImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onPressedSubmitImpl>
    implements _$$onPressedSubmitImplCopyWith<$Res> {
  __$$onPressedSubmitImplCopyWithImpl(
      _$onPressedSubmitImpl _value, $Res Function(_$onPressedSubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onPressedSubmitImpl implements onPressedSubmit {
  const _$onPressedSubmitImpl();

  @override
  String toString() {
    return 'ResultEvent.onPressedSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onPressedSubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPressedValidate,
    required TResult Function() onPressedSubmit,
    required TResult Function() onPressedCancel,
  }) {
    return onPressedSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPressedValidate,
    TResult? Function()? onPressedSubmit,
    TResult? Function()? onPressedCancel,
  }) {
    return onPressedSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPressedValidate,
    TResult Function()? onPressedSubmit,
    TResult Function()? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedSubmit != null) {
      return onPressedSubmit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedValidate value) onPressedValidate,
    required TResult Function(onPressedSubmit value) onPressedSubmit,
    required TResult Function(onPressedCancel value) onPressedCancel,
  }) {
    return onPressedSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedValidate value)? onPressedValidate,
    TResult? Function(onPressedSubmit value)? onPressedSubmit,
    TResult? Function(onPressedCancel value)? onPressedCancel,
  }) {
    return onPressedSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedValidate value)? onPressedValidate,
    TResult Function(onPressedSubmit value)? onPressedSubmit,
    TResult Function(onPressedCancel value)? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedSubmit != null) {
      return onPressedSubmit(this);
    }
    return orElse();
  }
}

abstract class onPressedSubmit implements ResultEvent {
  const factory onPressedSubmit() = _$onPressedSubmitImpl;
}

/// @nodoc
abstract class _$$onPressedCancelImplCopyWith<$Res> {
  factory _$$onPressedCancelImplCopyWith(_$onPressedCancelImpl value,
          $Res Function(_$onPressedCancelImpl) then) =
      __$$onPressedCancelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onPressedCancelImplCopyWithImpl<$Res>
    extends _$ResultEventCopyWithImpl<$Res, _$onPressedCancelImpl>
    implements _$$onPressedCancelImplCopyWith<$Res> {
  __$$onPressedCancelImplCopyWithImpl(
      _$onPressedCancelImpl _value, $Res Function(_$onPressedCancelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onPressedCancelImpl implements onPressedCancel {
  const _$onPressedCancelImpl();

  @override
  String toString() {
    return 'ResultEvent.onPressedCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onPressedCancelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onPressedValidate,
    required TResult Function() onPressedSubmit,
    required TResult Function() onPressedCancel,
  }) {
    return onPressedCancel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onPressedValidate,
    TResult? Function()? onPressedSubmit,
    TResult? Function()? onPressedCancel,
  }) {
    return onPressedCancel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onPressedValidate,
    TResult Function()? onPressedSubmit,
    TResult Function()? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedCancel != null) {
      return onPressedCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedValidate value) onPressedValidate,
    required TResult Function(onPressedSubmit value) onPressedSubmit,
    required TResult Function(onPressedCancel value) onPressedCancel,
  }) {
    return onPressedCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedValidate value)? onPressedValidate,
    TResult? Function(onPressedSubmit value)? onPressedSubmit,
    TResult? Function(onPressedCancel value)? onPressedCancel,
  }) {
    return onPressedCancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedValidate value)? onPressedValidate,
    TResult Function(onPressedSubmit value)? onPressedSubmit,
    TResult Function(onPressedCancel value)? onPressedCancel,
    required TResult orElse(),
  }) {
    if (onPressedCancel != null) {
      return onPressedCancel(this);
    }
    return orElse();
  }
}

abstract class onPressedCancel implements ResultEvent {
  const factory onPressedCancel() = _$onPressedCancelImpl;
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

class _$ResultStateImpl implements _ResultState {
  const _$ResultStateImpl();

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

abstract class _ResultState implements ResultState {
  const factory _ResultState() = _$ResultStateImpl;
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

class _$ResultInitialImpl implements ResultInitial {
  const _$ResultInitialImpl();

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

abstract class ResultInitial implements ResultState {
  const factory ResultInitial() = _$ResultInitialImpl;
}
