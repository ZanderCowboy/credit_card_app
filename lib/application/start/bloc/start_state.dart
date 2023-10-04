part of 'start_bloc.dart';

@freezed
class StartState with _$StartState {
  const factory StartState({
    required bool isLoading,
    required String? errorMessage,
  }) = _StartState;

  const StartState._();

  factory StartState.initial() =>
      const StartState(isLoading: false, errorMessage: '');
}
