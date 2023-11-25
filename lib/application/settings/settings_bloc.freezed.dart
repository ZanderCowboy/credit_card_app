// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onPressedAddCountry,
    required TResult Function(BannedCountry bannedCountry)
        onLongPressedDeleteCountry,
    required TResult Function(BannedCountry bannedCountry) onPressedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onPressedAddCountry,
    TResult? Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult? Function(BannedCountry bannedCountry)? onPressedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onPressedAddCountry,
    TResult Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult Function(BannedCountry bannedCountry)? onPressedCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPressedAddCountry value) onPressedAddCountry,
    required TResult Function(OnLongPressedDeleteCountry value)
        onLongPressedDeleteCountry,
    required TResult Function(OnPressedCountry value) onPressedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult? Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult? Function(OnPressedCountry value)? onPressedCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult Function(OnPressedCountry value)? onPressedCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnPressedAddCountryImplCopyWith<$Res> {
  factory _$$OnPressedAddCountryImplCopyWith(_$OnPressedAddCountryImpl value,
          $Res Function(_$OnPressedAddCountryImpl) then) =
      __$$OnPressedAddCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? selectedCountry});
}

/// @nodoc
class __$$OnPressedAddCountryImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnPressedAddCountryImpl>
    implements _$$OnPressedAddCountryImplCopyWith<$Res> {
  __$$OnPressedAddCountryImplCopyWithImpl(_$OnPressedAddCountryImpl _value,
      $Res Function(_$OnPressedAddCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedCountry = freezed,
  }) {
    return _then(_$OnPressedAddCountryImpl(
      freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnPressedAddCountryImpl
    with DiagnosticableTreeMixin
    implements OnPressedAddCountry {
  const _$OnPressedAddCountryImpl(this.selectedCountry);

  @override
  final String? selectedCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onPressedAddCountry(selectedCountry: $selectedCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.onPressedAddCountry'))
      ..add(DiagnosticsProperty('selectedCountry', selectedCountry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPressedAddCountryImpl &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPressedAddCountryImplCopyWith<_$OnPressedAddCountryImpl> get copyWith =>
      __$$OnPressedAddCountryImplCopyWithImpl<_$OnPressedAddCountryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onPressedAddCountry,
    required TResult Function(BannedCountry bannedCountry)
        onLongPressedDeleteCountry,
    required TResult Function(BannedCountry bannedCountry) onPressedCountry,
  }) {
    return onPressedAddCountry(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onPressedAddCountry,
    TResult? Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult? Function(BannedCountry bannedCountry)? onPressedCountry,
  }) {
    return onPressedAddCountry?.call(selectedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onPressedAddCountry,
    TResult Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult Function(BannedCountry bannedCountry)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onPressedAddCountry != null) {
      return onPressedAddCountry(selectedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPressedAddCountry value) onPressedAddCountry,
    required TResult Function(OnLongPressedDeleteCountry value)
        onLongPressedDeleteCountry,
    required TResult Function(OnPressedCountry value) onPressedCountry,
  }) {
    return onPressedAddCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult? Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult? Function(OnPressedCountry value)? onPressedCountry,
  }) {
    return onPressedAddCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult Function(OnPressedCountry value)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onPressedAddCountry != null) {
      return onPressedAddCountry(this);
    }
    return orElse();
  }
}

abstract class OnPressedAddCountry implements SettingsEvent {
  const factory OnPressedAddCountry(final String? selectedCountry) =
      _$OnPressedAddCountryImpl;

  String? get selectedCountry;
  @JsonKey(ignore: true)
  _$$OnPressedAddCountryImplCopyWith<_$OnPressedAddCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLongPressedDeleteCountryImplCopyWith<$Res> {
  factory _$$OnLongPressedDeleteCountryImplCopyWith(
          _$OnLongPressedDeleteCountryImpl value,
          $Res Function(_$OnLongPressedDeleteCountryImpl) then) =
      __$$OnLongPressedDeleteCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannedCountry bannedCountry});

  $BannedCountryCopyWith<$Res> get bannedCountry;
}

/// @nodoc
class __$$OnLongPressedDeleteCountryImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnLongPressedDeleteCountryImpl>
    implements _$$OnLongPressedDeleteCountryImplCopyWith<$Res> {
  __$$OnLongPressedDeleteCountryImplCopyWithImpl(
      _$OnLongPressedDeleteCountryImpl _value,
      $Res Function(_$OnLongPressedDeleteCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
  }) {
    return _then(_$OnLongPressedDeleteCountryImpl(
      null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as BannedCountry,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountryCopyWith<$Res> get bannedCountry {
    return $BannedCountryCopyWith<$Res>(_value.bannedCountry, (value) {
      return _then(_value.copyWith(bannedCountry: value));
    });
  }
}

/// @nodoc

class _$OnLongPressedDeleteCountryImpl
    with DiagnosticableTreeMixin
    implements OnLongPressedDeleteCountry {
  const _$OnLongPressedDeleteCountryImpl(this.bannedCountry);

  @override
  final BannedCountry bannedCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onLongPressedDeleteCountry(bannedCountry: $bannedCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SettingsEvent.onLongPressedDeleteCountry'))
      ..add(DiagnosticsProperty('bannedCountry', bannedCountry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLongPressedDeleteCountryImpl &&
            (identical(other.bannedCountry, bannedCountry) ||
                other.bannedCountry == bannedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLongPressedDeleteCountryImplCopyWith<_$OnLongPressedDeleteCountryImpl>
      get copyWith => __$$OnLongPressedDeleteCountryImplCopyWithImpl<
          _$OnLongPressedDeleteCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onPressedAddCountry,
    required TResult Function(BannedCountry bannedCountry)
        onLongPressedDeleteCountry,
    required TResult Function(BannedCountry bannedCountry) onPressedCountry,
  }) {
    return onLongPressedDeleteCountry(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onPressedAddCountry,
    TResult? Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult? Function(BannedCountry bannedCountry)? onPressedCountry,
  }) {
    return onLongPressedDeleteCountry?.call(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onPressedAddCountry,
    TResult Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult Function(BannedCountry bannedCountry)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onLongPressedDeleteCountry != null) {
      return onLongPressedDeleteCountry(bannedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPressedAddCountry value) onPressedAddCountry,
    required TResult Function(OnLongPressedDeleteCountry value)
        onLongPressedDeleteCountry,
    required TResult Function(OnPressedCountry value) onPressedCountry,
  }) {
    return onLongPressedDeleteCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult? Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult? Function(OnPressedCountry value)? onPressedCountry,
  }) {
    return onLongPressedDeleteCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult Function(OnPressedCountry value)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onLongPressedDeleteCountry != null) {
      return onLongPressedDeleteCountry(this);
    }
    return orElse();
  }
}

abstract class OnLongPressedDeleteCountry implements SettingsEvent {
  const factory OnLongPressedDeleteCountry(final BannedCountry bannedCountry) =
      _$OnLongPressedDeleteCountryImpl;

  BannedCountry get bannedCountry;
  @JsonKey(ignore: true)
  _$$OnLongPressedDeleteCountryImplCopyWith<_$OnLongPressedDeleteCountryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPressedCountryImplCopyWith<$Res> {
  factory _$$OnPressedCountryImplCopyWith(_$OnPressedCountryImpl value,
          $Res Function(_$OnPressedCountryImpl) then) =
      __$$OnPressedCountryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BannedCountry bannedCountry});

  $BannedCountryCopyWith<$Res> get bannedCountry;
}

/// @nodoc
class __$$OnPressedCountryImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$OnPressedCountryImpl>
    implements _$$OnPressedCountryImplCopyWith<$Res> {
  __$$OnPressedCountryImplCopyWithImpl(_$OnPressedCountryImpl _value,
      $Res Function(_$OnPressedCountryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
  }) {
    return _then(_$OnPressedCountryImpl(
      null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as BannedCountry,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountryCopyWith<$Res> get bannedCountry {
    return $BannedCountryCopyWith<$Res>(_value.bannedCountry, (value) {
      return _then(_value.copyWith(bannedCountry: value));
    });
  }
}

/// @nodoc

class _$OnPressedCountryImpl
    with DiagnosticableTreeMixin
    implements OnPressedCountry {
  const _$OnPressedCountryImpl(this.bannedCountry);

  @override
  final BannedCountry bannedCountry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsEvent.onPressedCountry(bannedCountry: $bannedCountry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsEvent.onPressedCountry'))
      ..add(DiagnosticsProperty('bannedCountry', bannedCountry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPressedCountryImpl &&
            (identical(other.bannedCountry, bannedCountry) ||
                other.bannedCountry == bannedCountry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPressedCountryImplCopyWith<_$OnPressedCountryImpl> get copyWith =>
      __$$OnPressedCountryImplCopyWithImpl<_$OnPressedCountryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? selectedCountry) onPressedAddCountry,
    required TResult Function(BannedCountry bannedCountry)
        onLongPressedDeleteCountry,
    required TResult Function(BannedCountry bannedCountry) onPressedCountry,
  }) {
    return onPressedCountry(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? selectedCountry)? onPressedAddCountry,
    TResult? Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult? Function(BannedCountry bannedCountry)? onPressedCountry,
  }) {
    return onPressedCountry?.call(bannedCountry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? selectedCountry)? onPressedAddCountry,
    TResult Function(BannedCountry bannedCountry)? onLongPressedDeleteCountry,
    TResult Function(BannedCountry bannedCountry)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onPressedCountry != null) {
      return onPressedCountry(bannedCountry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnPressedAddCountry value) onPressedAddCountry,
    required TResult Function(OnLongPressedDeleteCountry value)
        onLongPressedDeleteCountry,
    required TResult Function(OnPressedCountry value) onPressedCountry,
  }) {
    return onPressedCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult? Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult? Function(OnPressedCountry value)? onPressedCountry,
  }) {
    return onPressedCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnPressedAddCountry value)? onPressedAddCountry,
    TResult Function(OnLongPressedDeleteCountry value)?
        onLongPressedDeleteCountry,
    TResult Function(OnPressedCountry value)? onPressedCountry,
    required TResult orElse(),
  }) {
    if (onPressedCountry != null) {
      return onPressedCountry(this);
    }
    return orElse();
  }
}

abstract class OnPressedCountry implements SettingsEvent {
  const factory OnPressedCountry(final BannedCountry bannedCountry) =
      _$OnPressedCountryImpl;

  BannedCountry get bannedCountry;
  @JsonKey(ignore: true)
  _$$OnPressedCountryImplCopyWith<_$OnPressedCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  BannedCountry get bannedCountry => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  bool get isUnchecked => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;
  bool get isAdded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {BannedCountry bannedCountry,
      bool isChecked,
      bool isUnchecked,
      bool isLoading,
      bool isDeleted,
      bool isAdded,
      String? errorMessage});

  $BannedCountryCopyWith<$Res> get bannedCountry;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
    Object? isChecked = null,
    Object? isUnchecked = null,
    Object? isLoading = null,
    Object? isDeleted = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      bannedCountry: null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as BannedCountry,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnchecked: null == isUnchecked
          ? _value.isUnchecked
          : isUnchecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannedCountryCopyWith<$Res> get bannedCountry {
    return $BannedCountryCopyWith<$Res>(_value.bannedCountry, (value) {
      return _then(_value.copyWith(bannedCountry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannedCountry bannedCountry,
      bool isChecked,
      bool isUnchecked,
      bool isLoading,
      bool isDeleted,
      bool isAdded,
      String? errorMessage});

  @override
  $BannedCountryCopyWith<$Res> get bannedCountry;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannedCountry = null,
    Object? isChecked = null,
    Object? isUnchecked = null,
    Object? isLoading = null,
    Object? isDeleted = null,
    Object? isAdded = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SettingsStateImpl(
      bannedCountry: null == bannedCountry
          ? _value.bannedCountry
          : bannedCountry // ignore: cast_nullable_to_non_nullable
              as BannedCountry,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isUnchecked: null == isUnchecked
          ? _value.isUnchecked
          : isUnchecked // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isAdded: null == isAdded
          ? _value.isAdded
          : isAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SettingsStateImpl
    with DiagnosticableTreeMixin
    implements _SettingsState {
  const _$SettingsStateImpl(
      {required this.bannedCountry,
      required this.isChecked,
      required this.isUnchecked,
      required this.isLoading,
      required this.isDeleted,
      required this.isAdded,
      required this.errorMessage});

  @override
  final BannedCountry bannedCountry;
  @override
  final bool isChecked;
  @override
  final bool isUnchecked;
  @override
  final bool isLoading;
  @override
  final bool isDeleted;
  @override
  final bool isAdded;
  @override
  final String? errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SettingsState(bannedCountry: $bannedCountry, isChecked: $isChecked, isUnchecked: $isUnchecked, isLoading: $isLoading, isDeleted: $isDeleted, isAdded: $isAdded, errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('bannedCountry', bannedCountry))
      ..add(DiagnosticsProperty('isChecked', isChecked))
      ..add(DiagnosticsProperty('isUnchecked', isUnchecked))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('isAdded', isAdded))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.bannedCountry, bannedCountry) ||
                other.bannedCountry == bannedCountry) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked) &&
            (identical(other.isUnchecked, isUnchecked) ||
                other.isUnchecked == isUnchecked) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isAdded, isAdded) || other.isAdded == isAdded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bannedCountry, isChecked,
      isUnchecked, isLoading, isDeleted, isAdded, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final BannedCountry bannedCountry,
      required final bool isChecked,
      required final bool isUnchecked,
      required final bool isLoading,
      required final bool isDeleted,
      required final bool isAdded,
      required final String? errorMessage}) = _$SettingsStateImpl;

  @override
  BannedCountry get bannedCountry;
  @override
  bool get isChecked;
  @override
  bool get isUnchecked;
  @override
  bool get isLoading;
  @override
  bool get isDeleted;
  @override
  bool get isAdded;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
