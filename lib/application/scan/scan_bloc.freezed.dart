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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
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
abstract class _$$onPressedSubmitScanImplCopyWith<$Res> {
  factory _$$onPressedSubmitScanImplCopyWith(_$onPressedSubmitScanImpl value,
          $Res Function(_$onPressedSubmitScanImpl) then) =
      __$$onPressedSubmitScanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onPressedSubmitScanImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onPressedSubmitScanImpl>
    implements _$$onPressedSubmitScanImplCopyWith<$Res> {
  __$$onPressedSubmitScanImplCopyWithImpl(_$onPressedSubmitScanImpl _value,
      $Res Function(_$onPressedSubmitScanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onPressedSubmitScanImpl(
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

class _$onPressedSubmitScanImpl implements onPressedSubmitScan {
  const _$onPressedSubmitScanImpl(this.creditCard);

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'ScanEvent.onPressedSubmitScan(creditCard: $creditCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onPressedSubmitScanImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onPressedSubmitScanImplCopyWith<_$onPressedSubmitScanImpl> get copyWith =>
      __$$onPressedSubmitScanImplCopyWithImpl<_$onPressedSubmitScanImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onPressedSubmitScan(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onPressedSubmitScan?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedSubmitScan != null) {
      return onPressedSubmitScan(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onPressedSubmitScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onPressedSubmitScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedSubmitScan != null) {
      return onPressedSubmitScan(this);
    }
    return orElse();
  }
}

abstract class onPressedSubmitScan implements ScanEvent {
  const factory onPressedSubmitScan(final CreditCard creditCard) =
      _$onPressedSubmitScanImpl;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onPressedSubmitScanImplCopyWith<_$onPressedSubmitScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onPressedTakeImplCopyWith<$Res> {
  factory _$$onPressedTakeImplCopyWith(
          _$onPressedTakeImpl value, $Res Function(_$onPressedTakeImpl) then) =
      __$$onPressedTakeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onPressedTakeImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onPressedTakeImpl>
    implements _$$onPressedTakeImplCopyWith<$Res> {
  __$$onPressedTakeImplCopyWithImpl(
      _$onPressedTakeImpl _value, $Res Function(_$onPressedTakeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onPressedTakeImpl implements onPressedTake {
  const _$onPressedTakeImpl();

  @override
  String toString() {
    return 'ScanEvent.onPressedTake()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onPressedTakeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onPressedTake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onPressedTake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedTake != null) {
      return onPressedTake();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onPressedTake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onPressedTake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedTake != null) {
      return onPressedTake(this);
    }
    return orElse();
  }
}

abstract class onPressedTake implements ScanEvent {
  const factory onPressedTake() = _$onPressedTakeImpl;
}

/// @nodoc
abstract class _$$onPressedRetakeImplCopyWith<$Res> {
  factory _$$onPressedRetakeImplCopyWith(_$onPressedRetakeImpl value,
          $Res Function(_$onPressedRetakeImpl) then) =
      __$$onPressedRetakeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onPressedRetakeImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onPressedRetakeImpl>
    implements _$$onPressedRetakeImplCopyWith<$Res> {
  __$$onPressedRetakeImplCopyWithImpl(
      _$onPressedRetakeImpl _value, $Res Function(_$onPressedRetakeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onPressedRetakeImpl implements onPressedRetake {
  const _$onPressedRetakeImpl();

  @override
  String toString() {
    return 'ScanEvent.onPressedRetake()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onPressedRetakeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onPressedRetake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onPressedRetake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedRetake != null) {
      return onPressedRetake();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onPressedRetake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onPressedRetake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onPressedRetake != null) {
      return onPressedRetake(this);
    }
    return orElse();
  }
}

abstract class onPressedRetake implements ScanEvent {
  const factory onPressedRetake() = _$onPressedRetakeImpl;
}

/// @nodoc
abstract class _$$onRequestCameraPermissionImplCopyWith<$Res> {
  factory _$$onRequestCameraPermissionImplCopyWith(
          _$onRequestCameraPermissionImpl value,
          $Res Function(_$onRequestCameraPermissionImpl) then) =
      __$$onRequestCameraPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onRequestCameraPermissionImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onRequestCameraPermissionImpl>
    implements _$$onRequestCameraPermissionImplCopyWith<$Res> {
  __$$onRequestCameraPermissionImplCopyWithImpl(
      _$onRequestCameraPermissionImpl _value,
      $Res Function(_$onRequestCameraPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onRequestCameraPermissionImpl implements onRequestCameraPermission {
  const _$onRequestCameraPermissionImpl();

  @override
  String toString() {
    return 'ScanEvent.onRequestCameraPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onRequestCameraPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onRequestCameraPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onRequestCameraPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onRequestCameraPermission != null) {
      return onRequestCameraPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onRequestCameraPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onRequestCameraPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onRequestCameraPermission != null) {
      return onRequestCameraPermission(this);
    }
    return orElse();
  }
}

abstract class onRequestCameraPermission implements ScanEvent {
  const factory onRequestCameraPermission() = _$onRequestCameraPermissionImpl;
}

/// @nodoc
abstract class _$$onInitializeCameraImplCopyWith<$Res> {
  factory _$$onInitializeCameraImplCopyWith(_$onInitializeCameraImpl value,
          $Res Function(_$onInitializeCameraImpl) then) =
      __$$onInitializeCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onInitializeCameraImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onInitializeCameraImpl>
    implements _$$onInitializeCameraImplCopyWith<$Res> {
  __$$onInitializeCameraImplCopyWithImpl(_$onInitializeCameraImpl _value,
      $Res Function(_$onInitializeCameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$onInitializeCameraImpl implements onInitializeCamera {
  const _$onInitializeCameraImpl();

  @override
  String toString() {
    return 'ScanEvent.onInitializeCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onInitializeCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onPressedSubmitScan,
    required TResult Function() onPressedTake,
    required TResult Function() onPressedRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onInitializeCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult? Function()? onPressedTake,
    TResult? Function()? onPressedRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onInitializeCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onPressedSubmitScan,
    TResult Function()? onPressedTake,
    TResult Function()? onPressedRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onInitializeCamera != null) {
      return onInitializeCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onPressedSubmitScan value) onPressedSubmitScan,
    required TResult Function(onPressedTake value) onPressedTake,
    required TResult Function(onPressedRetake value) onPressedRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onInitializeCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult? Function(onPressedTake value)? onPressedTake,
    TResult? Function(onPressedRetake value)? onPressedRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onInitializeCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onPressedSubmitScan value)? onPressedSubmitScan,
    TResult Function(onPressedTake value)? onPressedTake,
    TResult Function(onPressedRetake value)? onPressedRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onInitializeCamera != null) {
      return onInitializeCamera(this);
    }
    return orElse();
  }
}

abstract class onInitializeCamera implements ScanEvent {
  const factory onInitializeCamera() = _$onInitializeCameraImpl;
}

/// @nodoc
mixin _$ScanState {
  CreditCard get creditCard => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSubmitted => throw _privateConstructorUsedError;
  bool get isCaptured => throw _privateConstructorUsedError;
  bool get isTake => throw _privateConstructorUsedError;
  bool get isRetake => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScanStateCopyWith<ScanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanStateCopyWith<$Res> {
  factory $ScanStateCopyWith(ScanState value, $Res Function(ScanState) then) =
      _$ScanStateCopyWithImpl<$Res, ScanState>;
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isSubmitted,
      bool isCaptured,
      bool isTake,
      bool isRetake,
      String? errorMessage});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class _$ScanStateCopyWithImpl<$Res, $Val extends ScanState>
    implements $ScanStateCopyWith<$Res> {
  _$ScanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isSubmitted = null,
    Object? isCaptured = null,
    Object? isTake = null,
    Object? isRetake = null,
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
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCaptured: null == isCaptured
          ? _value.isCaptured
          : isCaptured // ignore: cast_nullable_to_non_nullable
              as bool,
      isTake: null == isTake
          ? _value.isTake
          : isTake // ignore: cast_nullable_to_non_nullable
              as bool,
      isRetake: null == isRetake
          ? _value.isRetake
          : isRetake // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ScanStateImplCopyWith<$Res>
    implements $ScanStateCopyWith<$Res> {
  factory _$$ScanStateImplCopyWith(
          _$ScanStateImpl value, $Res Function(_$ScanStateImpl) then) =
      __$$ScanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CreditCard creditCard,
      bool isLoading,
      bool isSubmitted,
      bool isCaptured,
      bool isTake,
      bool isRetake,
      String? errorMessage});

  @override
  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$ScanStateImplCopyWithImpl<$Res>
    extends _$ScanStateCopyWithImpl<$Res, _$ScanStateImpl>
    implements _$$ScanStateImplCopyWith<$Res> {
  __$$ScanStateImplCopyWithImpl(
      _$ScanStateImpl _value, $Res Function(_$ScanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
    Object? isLoading = null,
    Object? isSubmitted = null,
    Object? isCaptured = null,
    Object? isTake = null,
    Object? isRetake = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ScanStateImpl(
      creditCard: null == creditCard
          ? _value.creditCard
          : creditCard // ignore: cast_nullable_to_non_nullable
              as CreditCard,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitted: null == isSubmitted
          ? _value.isSubmitted
          : isSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      isCaptured: null == isCaptured
          ? _value.isCaptured
          : isCaptured // ignore: cast_nullable_to_non_nullable
              as bool,
      isTake: null == isTake
          ? _value.isTake
          : isTake // ignore: cast_nullable_to_non_nullable
              as bool,
      isRetake: null == isRetake
          ? _value.isRetake
          : isRetake // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScanStateImpl implements _ScanState {
  const _$ScanStateImpl(
      {required this.creditCard,
      required this.isLoading,
      required this.isSubmitted,
      required this.isCaptured,
      required this.isTake,
      required this.isRetake,
      required this.errorMessage});

  @override
  final CreditCard creditCard;
  @override
  final bool isLoading;
  @override
  final bool isSubmitted;
  @override
  final bool isCaptured;
  @override
  final bool isTake;
  @override
  final bool isRetake;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ScanState(creditCard: $creditCard, isLoading: $isLoading, isSubmitted: $isSubmitted, isCaptured: $isCaptured, isTake: $isTake, isRetake: $isRetake, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanStateImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSubmitted, isSubmitted) ||
                other.isSubmitted == isSubmitted) &&
            (identical(other.isCaptured, isCaptured) ||
                other.isCaptured == isCaptured) &&
            (identical(other.isTake, isTake) || other.isTake == isTake) &&
            (identical(other.isRetake, isRetake) ||
                other.isRetake == isRetake) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard, isLoading,
      isSubmitted, isCaptured, isTake, isRetake, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      __$$ScanStateImplCopyWithImpl<_$ScanStateImpl>(this, _$identity);
}

abstract class _ScanState implements ScanState {
  const factory _ScanState(
      {required final CreditCard creditCard,
      required final bool isLoading,
      required final bool isSubmitted,
      required final bool isCaptured,
      required final bool isTake,
      required final bool isRetake,
      required final String? errorMessage}) = _$ScanStateImpl;

  @override
  CreditCard get creditCard;
  @override
  bool get isLoading;
  @override
  bool get isSubmitted;
  @override
  bool get isCaptured;
  @override
  bool get isTake;
  @override
  bool get isRetake;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ScanStateImplCopyWith<_$ScanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
