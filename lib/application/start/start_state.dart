part of 'start_bloc.dart';

/// StartBloc's states
@freezed
class StartState with _$StartState {
  /// StartState constructor
  const factory StartState({
    required bool isLoading,
    required String? errorMessage,
  }) = _StartState;

  /// Initial EnterState, giving all partial state's values
  factory StartState.initial() =>
      const StartState(isLoading: false, errorMessage: '');
}
