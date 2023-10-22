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
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
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
abstract class _$$onSubmitScanImplCopyWith<$Res> {
  factory _$$onSubmitScanImplCopyWith(
          _$onSubmitScanImpl value, $Res Function(_$onSubmitScanImpl) then) =
      __$$onSubmitScanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreditCard creditCard});

  $CreditCardCopyWith<$Res> get creditCard;
}

/// @nodoc
class __$$onSubmitScanImplCopyWithImpl<$Res>
    extends _$ScanEventCopyWithImpl<$Res, _$onSubmitScanImpl>
    implements _$$onSubmitScanImplCopyWith<$Res> {
  __$$onSubmitScanImplCopyWithImpl(
      _$onSubmitScanImpl _value, $Res Function(_$onSubmitScanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? creditCard = null,
  }) {
    return _then(_$onSubmitScanImpl(
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

class _$onSubmitScanImpl implements onSubmitScan {
  const _$onSubmitScanImpl(this.creditCard);

  @override
  final CreditCard creditCard;

  @override
  String toString() {
    return 'ScanEvent.onSubmitScan(creditCard: $creditCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSubmitScanImpl &&
            (identical(other.creditCard, creditCard) ||
                other.creditCard == creditCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, creditCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onSubmitScanImplCopyWith<_$onSubmitScanImpl> get copyWith =>
      __$$onSubmitScanImplCopyWithImpl<_$onSubmitScanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onSubmitScan(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onSubmitScan?.call(creditCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onSubmitScan != null) {
      return onSubmitScan(creditCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onSubmitScan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onSubmitScan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
    required TResult orElse(),
  }) {
    if (onSubmitScan != null) {
      return onSubmitScan(this);
    }
    return orElse();
  }
}

abstract class onSubmitScan implements ScanEvent {
  const factory onSubmitScan(final CreditCard creditCard) = _$onSubmitScanImpl;

  CreditCard get creditCard;
  @JsonKey(ignore: true)
  _$$onSubmitScanImplCopyWith<_$onSubmitScanImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onTake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onTake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
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
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onTake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onTake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
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
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onRetake();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onRetake?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
    TResult Function()? onRequestCameraPermission,
    TResult Function()? onInitializeCamera,
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
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onRetake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onRetake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
    TResult Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult Function(onInitializeCamera value)? onInitializeCamera,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onRequestCameraPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onRequestCameraPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onRequestCameraPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
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
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onRequestCameraPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onRequestCameraPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onInitializeCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCard creditCard) onSubmitScan,
    required TResult Function() onTake,
    required TResult Function() onRetake,
    required TResult Function() onRequestCameraPermission,
    required TResult Function() onInitializeCamera,
  }) {
    return onInitializeCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreditCard creditCard)? onSubmitScan,
    TResult? Function()? onTake,
    TResult? Function()? onRetake,
    TResult? Function()? onRequestCameraPermission,
    TResult? Function()? onInitializeCamera,
  }) {
    return onInitializeCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCard creditCard)? onSubmitScan,
    TResult Function()? onTake,
    TResult Function()? onRetake,
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
    required TResult Function(onSubmitScan value) onSubmitScan,
    required TResult Function(onTake value) onTake,
    required TResult Function(onRetake value) onRetake,
    required TResult Function(onRequestCameraPermission value)
        onRequestCameraPermission,
    required TResult Function(onInitializeCamera value) onInitializeCamera,
  }) {
    return onInitializeCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(onSubmitScan value)? onSubmitScan,
    TResult? Function(onTake value)? onTake,
    TResult? Function(onRetake value)? onRetake,
    TResult? Function(onRequestCameraPermission value)?
        onRequestCameraPermission,
    TResult? Function(onInitializeCamera value)? onInitializeCamera,
  }) {
    return onInitializeCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onSubmitScan value)? onSubmitScan,
    TResult Function(onTake value)? onTake,
    TResult Function(onRetake value)? onRetake,
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
  bool operator ==(dynamic other) {
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
