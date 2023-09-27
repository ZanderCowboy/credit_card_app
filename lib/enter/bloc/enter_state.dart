part of 'enter_bloc.dart';

@freezed
sealed class EnterState with _$EnterState {
  const factory EnterState() = _EnterState;

  const EnterState._();

  const factory EnterState.initial() = Initial;

  const factory EnterState.loading() = Loading;

  const factory EnterState.loaded() = Loaded;

  const factory EnterState.error() = ErrorS;
}
