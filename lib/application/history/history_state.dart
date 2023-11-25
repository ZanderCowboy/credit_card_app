part of 'history_bloc.dart';

/// HistoryBloc's states.
@freezed
class HistoryState with _$HistoryState {
  /// HistoryState constructor
  const factory HistoryState({
    required CreditCard creditCard,
    required bool isLoading,
    required String? errorMessage,
  }) = _HistoryState;

  /// Initial HistoryState, giving all partial state's values
  factory HistoryState.initial() => HistoryState(
        creditCard: CreditCard.empty(),
        isLoading: false,
        errorMessage: '',
      );
}
