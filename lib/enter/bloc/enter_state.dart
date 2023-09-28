part of 'enter_bloc.dart';

@freezed
sealed class EnterState with _$EnterState {
  const factory EnterState() = _EnterState;

  const EnterState._();

  const factory EnterState.initial() = EnterInitial;
  const factory EnterState.loading() = EnterLoading;
  const factory EnterState.loaded() = EnterLoaded;
  const factory EnterState.error() = EnterError;

  const factory EnterState.valid() = EnterValid;
  const factory EnterState.duplicate() = EnterDuplicate;
  const factory EnterState.cancel() = EnterCancel;
  const factory EnterState.submit() = EnterSubmit;
}
